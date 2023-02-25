//
//  ContentView.swift
//  KevinBraille
//
//  Created by Kevin Jacob on 12/23/22.
//

import SwiftUI

struct BrailleButtonGridLayout: View {
    @State var phraseThree: String = Phrase.getNextPrevThree()
   // let rangeCopy = Phrase.phraseInputCopy.startIndex..<Phrase.phraseInputCopy.index(Phrase.phraseInputCopy.startIndex, offsetBy: 3)
   // @State var phraseThreeCopy: String =     Phrase.phraseInputCopy(rangeCopy)
    
  //  var phraseThreeOne: Character = Phrase.genPhraseThreeOne(phrase: Phrase.phraseInput)
  //  @State var phraseThreeTwo: Character = Phrase.genPhraseThreeTwo(phrase: Phrase.phraseInput)
   // @State var phraseThreeThree: Character = Phrase.genPhraseThreeThree(phrase: Phrase.phraseInput)
        
    
    
    func updatePhrase() {
        phraseThree = Phrase.getNextThree()
        
    }
    
    func resetPhrase() {
       phraseThree = Phrase.getPrevThree()
    }
    
//    func updatePhrase() {
//        if Phrase.groupsThree > 0 {
//            self.phraseThree = Phrase.genPhraseNew()
//        } else {
//            self.phraseThree = Phrase.genPhraseThree(phrase: Phrase.phraseInput)
//        }
    
    //    func resetPhrase() {
    //        Phrase.phraseInput = Phrase.phraseInputCopy
    //     //  self.phraseThree = phraseThreeCopy
    //    }
//
    
//    func goHome() {
//        NavigationLink(destination: MotherView())
//    }
    
    var body: some View {
        Text(self.phraseThree)
        HStack{

            BrailleButtonGrid(buttonGridInput: ButtonGridInput(phraseThree: self.phraseThree, ndx: String.Index(encodedOffset: 0)))
                .padding()

            BrailleButtonGrid(buttonGridInput: ButtonGridInput(phraseThree: self.phraseThree, ndx: String.Index(encodedOffset: 1)))
                .padding()

            BrailleButtonGrid(buttonGridInput: ButtonGridInput(phraseThree: self.phraseThree, ndx: String.Index(encodedOffset: 2)))
                .padding()
              
        }
//        Button("NextJeff") {
//            updatePhrase()
//        }
        VStack {
            HStack{
                
                Button(action: resetPhrase) {
                    Image(systemName: "arrowshape.turn.up.left.fill")
                        .padding()
                        .scaleEffect(2)
                }
                
                Button(action: updatePhrase) {
                    Image(systemName: "arrowshape.turn.up.right.fill")
                        .padding()
                        .scaleEffect(2)
                    
                    
                   
                    
                    
                    
                }
                
                
            }
            NavigationLink(destination: MotherView()) {
                Text("Home")
            }
            .padding()
        }
    }

    
}



////
////  ContentView.swift
////  KevinBraille
////
////  Created by Kevin Jacob on 12/23/22.
////
//
//import SwiftUI
//
//struct BrailleButtonGridLayout: View {
//    @State var phraseThree: String = Phrase.genPhraseThree(phrase: Phrase.phraseInput)
//
//
//
//  /*  static func updatePhrase(phrase: String) {
//        phraseThree = Phrase.genPhraseThree(phrase: Phrase.phraseInput)
//    } */
//
//    var body: some View {
//        HStack{
//
//            BrailleButtonGrid(brailleArray: Braille.letterToArray(letter: phraseThree[String.Index(encodedOffset: 0)]))
//                .padding()
//
//            BrailleButtonGrid(brailleArray: Braille.letterToArray(letter: phraseThree[String.Index(encodedOffset: 1)]))
//                .padding()
//
//            BrailleButtonGrid(brailleArray: Braille.letterToArray(letter: phraseThree[String.Index(encodedOffset: 2)]))
//                .padding()
//
//        }
//
//
//
//    }
////    func refresh() {
////        self.setNeedsLayout()
////    }
//
//}



