//
//  VoiceInput.swift
//  AccessibilitySandbox
//
//  Created by Grace couch on 18/11/2024.
//

import SwiftUI

struct VoiceInput: View {
    var body: some View {
        Button("John Fitzgerald Kennedy") {
            print("button tapped")
        }
        .accessibilityInputLabels(["John Fitzgerald Kennedy", "Kennedy", "JFK"])
    }
}

#Preview {
    VoiceInput()
}
