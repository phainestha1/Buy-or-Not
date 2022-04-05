//
//  SecureInput.swift
//  Buy or Not
//
//  Created by Noah's Ark on 2022/04/03.
//

import Foundation
import SwiftUI

struct SecureInput: View {
    
    var placeholder: String
    var text: Binding<String>
    var width: CGFloat
    
    var body: some View {
        SecureField(placeholder, text: text)
            .padding()
            .frame(width: width, height: 50, alignment: .center)
            .foregroundColor(Color("TextPlaceholder"))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 0.5)
            )
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
            .padding(2)
    }
}
