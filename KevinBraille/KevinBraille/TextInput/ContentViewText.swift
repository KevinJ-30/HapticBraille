////
////  ContentView.swift
////  KevinBraille
////
////  Created by Kevin Jacob on 12/23/22.
////
//
//import SwiftUI
//
//struct ContentViewText: View {
// @State var inputtedText = ""
//    var body: some View {
//        VStack {
//            TextField ("Input Text", text: $inputtedText)
//                .frame(height: 55)
//                .textFieldStyle(PlainTextFieldStyle())
//                .padding([.horizontal], 4)
//                .cornerRadius(16)
//                .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
//                .padding([.horizontal], 24)
//
////                .padding([.leading, .trailing], 4)
////                .cornerRadius(16)
////                .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray).padding(.bottom, -150).padding(.top, 50))
////                .padding([.leading, .trailing], 24)
////
//
//
//
//
//
////          .textFieldStyle(.roundedBorder)
////        .textInputAutocapitalization(.never)
////           // .border(.secondary)
////            .padding()
//
//            Button(action: setInput) {
//                Image(systemName: "square.and.arrow.up.fill")
//                    .padding()
//            }
//
//            NavigationLink(destination: ContentViewBraille()) {
//                Text("To Braille")
//            }
//
//        }
//
//
//    }
//    func setInput() {
//        Phrase.phraseInput = inputtedText.lowercased()
//
//    }
//
//}
//
////struct ContentView_Previews: PreviewProvider {
////    static var previews: some View {
////        ContentView()
////    }
////}
