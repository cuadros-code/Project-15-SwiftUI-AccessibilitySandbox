//
//  VoiceInput.swift
//  Project-15-SwiftUI-AccessibilitySandbox
//
//  Created by Kevin Cuadros on 21/03/25.
//


// Voice Input lets users activate controls through names or numbers.

import SwiftUI

struct VoiceInput: View {
    var body: some View {
        VStack {
            Button("Tap Me") {
                print("Button tapped")
            }
            
            Spacer()
            
            Button("John Fitzgerald Kennedy") {
                print("Button tapped")
            }
            
            Spacer()
            
            // This Button can be active used
            // ["John Fitzgerald Kennedy", "Kennedy", "JFK"]
            Button("John Fitzgerald Kennedy") {
                print("Button tapped")
            }
            .accessibilityInputLabels(["John Fitzgerald Kennedy", "Kennedy", "JFK"])
        }
    }
}

#Preview {
    VoiceInput()
}
