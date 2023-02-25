//
//  Utilities.swift
//  KevinBraille
//
//  Created by Kevin Jacob on 12/24/22.
//

import Foundation
import SwiftUI

//final class CurrentValueSubject<Output, Failure> where Failure : Error {}

class ButtonGridInput: ObservableObject {
    var phraseThree: String {
        didSet {
            brailleArr = Braille.letterToArray(letter: phraseThree[ndx])
        }
    }
    var ndx: String.Index
    
    var brailleArr: Array<Bool>
    
    
    init(phraseThree: String, ndx: String.Index) {
        self.phraseThree = phraseThree
        self.ndx = ndx
        self.brailleArr = Braille.letterToArray(letter: phraseThree[ndx])
    }
}


class Braille {
    
    static var brailleMap: [Character : [Bool]] = ["a":[true,false,false,false,false,false],
                      "b":[true,true,false,false,false,false],
                      "c":[true,false,false,true,false,false],
                      "d":[true,false,false,true,true,false],
                      "e":[true,false,false,false,true,false],
                      "f":[true,true,false,true,false,false],
                      "g":[true,true,false,true,true,false],
                      "h":[true,true,false,false,true,false],
                      "i":[false,true,false,true,false,false],
                      "j":[false,true,false,true,true,false],
                      "k":[true,false,true,false,false,false],
                      "l":[true,true,true,false,false,false],
                      "m":[true,false,true,true,false,false],
                      "n":[true,false,true,true,true,false],
                      "o":[true,false,true,false,true,false],
                      "p":[true,true,true,true,false,false],
                      "q":[true,true,true,true,true,false],
                      "r":[true,true,true,false,true,false],
                      "s":[false,true,true,true,false,false],
                      "t":[false,true,true,true,true,false],
                      "u":[true,false,true,false,false,true],
                      "v":[true,true,true,false,false,true],
                      "w":[false,true,false,true,true,true],
                      "x":[true,false,true,true,false,true],
                      "y":[true,false,true,true,true,true],
                      "z":[true,false,true,false,true,true],
                      " ":[false,false,false,false,false,false]]
    
    static func letterToArray(letter: Character) -> Array<Bool> {
        var bArray: Array<Bool> = brailleMap[letter]!
        return bArray
    }
    
 
     
}

class Phrase {
    static var phraseInput: String = ""
    static var pointer: Int = 0
    static var nextCounter: Int = 0
   // static var backCounter: Int = 0
    static var phraseTemp: String = String(phraseInput[phraseInput.startIndex..<phraseInput.index(phraseInput.startIndex, offsetBy: 3)])
    static var direction: Bool = true
    
    
   
    static func getNextThree() -> String {
        direction = true
        return getNextPrevThree()
    }
    
    static func getPrevThree() -> String {
        direction = false
        return getNextPrevThree()
    }
    
    static func getNextPrevThree() -> String {
        var groupsThree: Int = phraseInput.count / 3
        if direction {
            if nextCounter < groupsThree {
                let range = phraseInput.index(phraseInput.startIndex, offsetBy: pointer)..<phraseInput.index(phraseInput.startIndex, offsetBy: pointer + 3)
                phraseTemp = String(phraseInput[range])
                pointer += 3
                nextCounter += 1
            }
        } else {
            if pointer != 3 {
                pointer = pointer - 3
                let range = phraseInput.index(phraseInput.startIndex, offsetBy: pointer - 3)..<phraseInput.index(phraseInput.startIndex, offsetBy: pointer)
                phraseTemp = String(phraseInput[range])
                nextCounter = nextCounter - 1
            }
        }
        printDetails()
        return phraseTemp
        
    }
    
    static func printDetails() {
        print("===============")
        print(direction)
        print(pointer)
        print(phraseTemp)
    }
}
    
    
    
    
    
    
   
   
 
//}
