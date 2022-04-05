//
//  DuplicationValidateButton.swift
//  Buy or Not
//
//  Created by Noah's Ark on 2022/04/03.
//

import Foundation
import SwiftUI

struct DuplicationValidateButton: View {
    
    var text: String
    
    var body: some View {
        Button(action: {
            print("Checking whetehr \(text) has its duplication...")
        }) {
            Text("중복 확인")
                .padding()
                .foregroundColor(Color.white)
        }
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.blue.opacity(0), lineWidth: 0.5)

        )
        .background(RoundedRectangle(cornerRadius: 10).fill(Color.blue))
    }
}
