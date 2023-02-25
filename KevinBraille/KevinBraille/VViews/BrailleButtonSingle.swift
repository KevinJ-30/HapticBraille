//
//  ContentView.swift
//  KevinBraille
//
//  Created by Kevin Jacob on 12/23/22.
//

import SwiftUI

struct BrailleButtonSingle: View {
    @Binding var active: Bool
    
    var body: some View {
        
        Button(action: playHaptic) {
            
            Image(systemName: "circle.inset.filled")
                .scaleEffect(2.5)
                .padding(25)
        }
        .foregroundColor(active ? .red : .blue)
       
        
        
    }
    
//    func playHaptic() {
//        if self.active {
//            // TODO: implement haptics code
//            print("haptic")
//        } else {
//            print("no haptic")
//        }
//    }
    
    func playHaptic() {
        if self.active {
            let impact = UIImpactFeedbackGenerator(style: .heavy)
            impact.impactOccurred()
            print("haptic")
        } else {
            print("no haptic")
        }
    }
}
