//
//  ContentView.swift
//  KevinBraille
//
//  Created by Kevin Jacob on 12/23/22.
//

import SwiftUI

struct ContentViewBraille: View {
   // @State var phraseThree: String = Phrase.genPhraseThree(phrase: Phrase.phraseInput)
    

    var body: some View {
        HStack {
            BrailleButtonGridLayout()
                .padding()
         
        }
        
        

        
    }
    
    
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
