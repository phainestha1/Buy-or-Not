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
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 180, height: 50, alignment: .center)
            Text(text)
                .foregroundColor(Color.white)
        }
    }
}
