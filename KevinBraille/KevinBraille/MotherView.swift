//
//  ContentView.swift
//  KevinBraille
//
//  Created by Kevin Jacob on 12/23/22.
//

import SwiftUI

struct MotherView: View {
 @State var inputtedText = ""
    var body: some View {
        
        NavigationView {
            VStack {
                TextField ("Input Text", text: $inputtedText)
                    .frame(height: 55)
                    .textFieldStyle(PlainTextFieldStyle())
                    .padding([.horizontal], 4)
                    .cornerRadius(16)
                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
                    .padding()
                
                //                .padding([.leading, .trailing], 4)
                //                .cornerRadius(16)
                //                .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray).padding(.bottom, -150).padding(.top, 50))
                //                .padding([.leading, .trailing], 24)
                //
                
                
                
                
                
                //          .textFieldStyle(.roundedBorder)
                //        .textInputAutocapitalization(.never)
                //           // .border(.secondary)
                //            .padding()
                
                Button(action: setInput) {
                    Image(systemName: "square.and.arrow.up.fill")
                        .padding()
                        .scaleEffect(3)
                }
                
                NavigationLink(destination: ContentViewBraille()) {
                    Text("To Braille")
                        .scaleEffect(2)
                        .padding(25)
                }
                
            }
            
        }
            
    
    }
    func setInput() {
        Phrase.pointer = 0
        Phrase.direction = true
        Phrase.nextCounter = 0
        var charactersLeft = inputtedText.count % 3
        if charactersLeft == 1 {
            inputtedText = inputtedText + "  "
        }
        
        else if charactersLeft == 2 {
            inputtedText = inputtedText + " "
        }
    
        Phrase.phraseInput = inputtedText.lowercased()
        
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
