////
////  Utilities.swift
////  KevinBraille
////
////  Created by Kevin Jacob on 12/24/22.
////
//
//import Foundation
//import SwiftUI
//
////final class CurrentValueSubject<Output, Failure> where Failure : Error {}
//
//class ButtonGridInput: ObservableObject {
//    var phraseThree: String {
//        didSet {
//            brailleArr = Braille.letterToArray(letter: phraseThree[ndx])
//        }
//    }
//    var ndx: String.Index
//
//    var brailleArr: Array<Bool>
//
//    //var phraseThreeCopy: String
//
//    init(phraseThree: String, ndx: String.Index) {
//        self.phraseThree = phraseThree
//        self.ndx = ndx
//        self.brailleArr = Braille.letterToArray(letter: phraseThree[ndx])
//      //  self.phraseThreeCopy = self.phraseThree
//    }
//}
//
//
//class Braille {
//
//    static var brailleMap: [Character : [Bool]] = ["a":[true,false,false,false,false,false],
//                      "b":[true,true,false,false,false,false],
//                      "c":[true,false,false,true,false,false],
//                      "d":[true,false,false,true,true,false],
//                      "e":[true,false,false,false,true,false],
//                      "f":[true,true,false,true,false,false],
//                      "g":[true,true,false,true,true,false],
//                      "h":[true,true,false,false,true,false],
//                      "i":[false,true,false,true,false,false],
//                      "j":[false,true,false,true,true,false],
//                      "k":[true,false,true,false,false,false],
//                      "l":[true,true,true,false,false,false],
//                      "m":[true,false,true,true,false,false],
//                      "n":[true,false,true,true,true,false],
//                      "o":[true,false,true,false,true,false],
//                      "p":[true,true,true,true,false,false],
//                      "q":[true,true,true,true,true,false],
//                      "r":[true,true,true,false,true,false],
//                      "s":[false,true,true,true,false,false],
//                      "t":[false,true,true,true,true,false],
//                      "u":[true,false,true,false,false,true],
//                      "v":[true,true,true,false,false,true],
//                      "w":[false,true,false,true,true,true],
//                      "x":[true,false,true,true,false,true],
//                      "y":[true,false,true,true,true,true],
//                      "z":[true,false,true,false,true,true],
//                      " ":[false,false,false,false,false,false]]
//
//    static func letterToArray(letter: Character) -> Array<Bool> {
//        var bArray: Array<Bool> = brailleMap[letter]!
//        return bArray
//    }
//
//   /* static func letterNdxToArray(fullStr: String, index: String.Index) -> Array<Bool> {
//        var letter = fullStr[index]
//        var bArray: Array<Bool> = brailleMap[letter]!
//        return bArray
//    } */
//
//}
//
//class Phrase {
//    static var phraseInput: String = ""
//    static let phraseInputCopy: String = phraseInput
//    static var groupsThree: Int = phraseInput.count / 3
//    static var charactersLeft = phraseInput.count % 3
//
//    @State static var oneT: Character = phraseInput[phraseInput.startIndex]
//    @State  static var twoT: Character = phraseInput[phraseInput.index(phraseInput.startIndex, offsetBy: 1)]
//    @State  static var threeT: Character = phraseInput[phraseInput.index(phraseInput.startIndex, offsetBy: 2)]
//
//
////    var phraseInput = CurrentValueSubject<String, Never>("compares")
//
//
//
//
//
//
//
//    static func genPhraseThree(phrase: String) -> String  {
//      @State  var phraseT:String
//        if phraseInput.count >= 3 {
//            phraseT = String(phraseInput.prefix(3))
//        }
//        else if phraseInput.count == 2 {
//          //  print(phraseInput)
//            phraseT = phraseInput + " "
//        }
//
//        else if phraseInput.count == 1 {
//          //  print(phraseInput)
//            phraseT = phraseInput + "  "
//        }
//
//        else {
//           // print(phraseInput)
//            phraseT = phraseInput + "   "
//        }
////        Phrase.genPhraseThreeOne(phrase: phraseT)
////        Phrase.genPhraseThreeTwo(phrase: phraseT)
////        Phrase.genPhraseThreeThree(phrase: phraseT)
//        return phraseT
//         }
//
//    static func genPhraseThreeOne(phrase: String) -> Character {
//       //@State var oneT: Character = phrase[String.Index(encodedOffset: 0)]
//        return oneT
//    }
//
//    static func genPhraseThreeTwo(phrase: String) -> Character {
//    //  @State  var twoT: Character = phrase[String.Index(encodedOffset: 1)]
//        return twoT
//    }
//
//    static func genPhraseThreeThree(phrase: String) -> Character {
//     // @State  var threeT: Character = phrase[String.Index(encodedOffset: 2)]
//        return threeT
//    }
//
//    static func genPhraseNew() -> String {
//
//            let range = phraseInput.startIndex..<phraseInput.index(phraseInput.startIndex, offsetBy: 3)
//            phraseInput.removeSubrange(range)
//           // print(phraseInput)
//            groupsThree = groupsThree - 1
//            return Phrase.genPhraseThree(phrase: phraseInput)
//        }
//
//
//    }
//
//class ResetBraille {
// //   static let phraseInputCopy: String = Phrase.phraseInput
//
//    static func resetBrailleInput() {
//        Phrase.phraseInput = Phrase.phraseInputCopy
//        Phrase.genPhraseNew()
//}
//}
