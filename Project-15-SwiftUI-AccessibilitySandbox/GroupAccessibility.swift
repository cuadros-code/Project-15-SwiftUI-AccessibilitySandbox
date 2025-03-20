//
//  GroupAccessibility.swift
//  Project-15-SwiftUI-AccessibilitySandbox
//
//  Created by Kevin Cuadros on 20/03/25.
//

import SwiftUI

struct GroupAccessibility: View {
    var body: some View {
        
        // Image not important to VoiceOver
        // decorative:
        // .accessibilityHidden(true)
        Image(decorative: "character")
            .accessibilityHidden(true)
        
        // VoiceOver detect a one element
        VStack {
            Text("Your score is")
            Text("1000")
                .font(.title)
        }
        .accessibilityElement(children: .combine)
        
        // Best result, is a once element in the same context
        VStack {
            Text("Your score is")
            Text("1000")
                .font(.title)
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Your score is 1000")
    }
}

#Preview {
    GroupAccessibility()
}
