//
//  BasicButton.swift
//  Buy or Not
//
//  Created by Noah's Ark on 2022/04/01.
//

import Foundation
import SwiftUI

struct BasicButton: View {
    
    var text: String
    
    var body: some View {

        Button(action: {}) {
            Text(text)
                .foregroundColor(Color.white)
                .frame(width: 180, height: 50, alignment: .center)
        }
        .background(.blue)
        .cornerRadius(10)
    }
}
