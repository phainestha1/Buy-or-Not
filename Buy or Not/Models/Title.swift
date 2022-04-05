//
//  Title.swift
//  Buy or Not
//
//  Created by Noah's Ark on 2022/04/01.
//

import Foundation
import SwiftUI

struct Title: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.system(size: 20))
            .foregroundColor(Color.gray)
    }
}
