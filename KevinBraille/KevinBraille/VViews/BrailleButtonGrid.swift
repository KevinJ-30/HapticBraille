//
//  ContentView.swift
//  KevinBraille
//
//  Created by Kevin Jacob on 12/23/22.
//

import SwiftUI

struct BrailleButtonGrid: View {
    @ObservedObject var buttonGridInput: ButtonGridInput
//    @State var brailleArray: Array<Bool> {
//        didSet {
//            print("BrailleArr")
//            print(brailleArray)
//        }
//    }
    
    var body: some View {
        HStack{
            VStack {
                BrailleButtonSingle(active: $buttonGridInput.brailleArr[0])
                BrailleButtonSingle(active: $buttonGridInput.brailleArr[1])
                BrailleButtonSingle(active: $buttonGridInput.brailleArr[2])
            }
            
            VStack {
                BrailleButtonSingle(active: $buttonGridInput.brailleArr[3])
                BrailleButtonSingle(active: $buttonGridInput.brailleArr[4])
                BrailleButtonSingle(active: $buttonGridInput.brailleArr[5])
                
            }
        }
      
//            HStack{
//                VStack {
//                    BrailleButtonSingle(active: $brailleArray[0])
//                    BrailleButtonSingle(active: $brailleArray[1])
//                    BrailleButtonSingle(active: $brailleArray[2])
//                }
//
//                VStack {
//                    BrailleButtonSingle(active: $brailleArray[3])
//                    BrailleButtonSingle(active: $brailleArray[4])
//                    BrailleButtonSingle(active: $brailleArray[5])
//
//                }
//            }
        }
        
        
        
    }
    
    

