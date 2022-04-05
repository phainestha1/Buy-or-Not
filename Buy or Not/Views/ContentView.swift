//
//  ContentView.swift
//  Buy or Not
//
//  Created by Noah's Ark on 2022/03/31.
//

import SwiftUI

// Need to verify whether a user already logged in.
// if yes, the view will navigate itself to the main page.
// if not, the user has to face the sign in page.

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
