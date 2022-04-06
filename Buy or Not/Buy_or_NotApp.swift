//
//  Buy_or_NotApp.swift
//  Buy or Not
//
//  Created by Noah's Ark on 2022/03/31.
//

import SwiftUI
import Firebase

@main
struct Buy_or_NotApp: App {
    
    @State private var isLoggedIn: Bool = false
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            if isLoggedIn {
                Main()
            } else {
                SignIn()
            }
        }
    }
}
