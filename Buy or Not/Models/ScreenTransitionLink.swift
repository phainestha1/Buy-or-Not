//
//  ScreenTransitionLink.swift
//  Buy or Not
//
//  Created by Noah's Ark on 2022/04/01.
//

import Foundation
import SwiftUI


struct ScreenTransitionLink: View {
    
    var destination: AnyView
    var text: String
    
    var body: some View {
        NavigationLink(destination: destination) { Text(text) }
        .padding(.vertical)
    }
}
