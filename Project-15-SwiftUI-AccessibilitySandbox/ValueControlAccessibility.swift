//
//  ValueControlAccessibility.swift
//  Project-15-SwiftUI-AccessibilitySandbox
//
//  Created by Kevin Cuadros on 20/03/25.
//

import SwiftUI

struct ValueControlAccessibility: View {
    
    @State private var value = 10
    
    var body: some View {
        VStack {
            Text("Value: \(value)")
            
            Button("Increment") {
                value += 1
            }
            .padding()
            
            Button("Decrement") {
                value -= 1
            }
            
            Button("Reset") {
                value = 0
            }
            .padding()
        }
        .accessibilityElement()
        .accessibilityLabel("Value")
        .accessibilityValue(String(value))
        .accessibilityAdjustableAction { direction in
            switch direction {
            case .increment:
                value += 1
            case .decrement:
                value -= 1
            default:
                print("not handle")
            }
        }
        
    }
}

#Preview {
    ValueControlAccessibility()
}
