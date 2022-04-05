//
//  InterestedCategory.swift
//  Buy or Not
//
//  Created by Noah's Ark on 2022/04/04.
//

import Foundation
import SwiftUI

struct InterestedCategory: View {
    
    var isTrue: Binding<Bool>
    var iconName: String
    var categoryName: String
    var hashTagsInString: String
    
    var body: some View {
        Toggle(isOn: isTrue) {
            Image(systemName: iconName).font(.system(size: 45))
                .frame(width: 55, height: 50, alignment: .center)
            
            VStack(alignment: .leading) {
                Text(categoryName)
                    .foregroundColor(Color.gray)
                    .frame(width: 200, alignment: .leading)
                
                Divider()
                    .frame(width: 210, height: 1.0)
                    .background(Color.gray)
                
                Text(hashTagsInString)
                    .font(.system(size: 14))
                    .foregroundColor(Color.gray)
                    .frame(width: 200, alignment: .leading)
            }
            .padding(.leading, 10)
            
        }
        .padding(.horizontal, 35)
        .padding(.vertical, 10)
        .toggleStyle(CheckBoxView())
    }
}
