//
//  TextInput.swift
//  Buy or Not
//
//  Created by Noah's Ark on 2022/03/31.
//

import Foundation
import SwiftUI

struct TextInput: View {
    
    var placeholder: String
    var value: Binding<String>
    
    var width: CGFloat
    
    var body: some View {
        TextField(placeholder, text: value)
            .padding()
            .frame(width: width, height: 50, alignment: .center)
            .foregroundColor(Color("TextPlaceholder"))
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 0.5)
            )
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
            .padding(2)
    }
}
