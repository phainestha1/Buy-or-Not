//
//  CheckBox.swift
//  Buy or Not
//
//  Created by Noah's Ark on 2022/04/04.
//

import Foundation
import SwiftUI

struct CheckBoxView: ToggleStyle {

    func makeBody(configuration: Self.Configuration) -> some View {

        return HStack {
            configuration.label

            Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(configuration.isOn ? .black : .gray)
                .font(.system(size: 20, weight: .regular, design: .default))
                .padding(.leading, 20)
        }
        .onTapGesture { configuration.isOn.toggle() }

    }
}
