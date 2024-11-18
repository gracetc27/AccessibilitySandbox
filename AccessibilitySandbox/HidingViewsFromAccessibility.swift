//
//  HidingViewsFromAccessibility.swift
//  AccessibilitySandbox
//
//  Created by Grace couch on 15/11/2024.
//

import SwiftUI

struct HidingViewsFromAccessibility: View {
    var body: some View {
        HStack {
            Image(decorative: "character")
                .resizable()
                .scaledToFit()

            Image(.character)
                .resizable()
                .scaledToFit()
                .accessibilityHidden(true)
        }
        HStack {
            VStack {
                Text("Your score is")

                Text("1000")
                    .font(.headline)
            }
            .padding()
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Your score is 1000")
            
            VStack {
                Text("Your score is")

                Text("1000")
                    .font(.headline)
            }
            .padding()
            .accessibilityElement(children: .combine)
        }
    }
}

#Preview {
    HidingViewsFromAccessibility()
}
