//
//  SignIn.swift
//  Buy or Not
//
//  Created by Noah's Ark on 2022/03/31.
//

import SwiftUI

struct SignIn: View {
    
    @State private var userId: String = ""
    @State private var userPassword: String = ""
    @State private var isSecured: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Image("logoSample")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)

                TextInput(placeholder: "이메일", value: $userId, width: 300)
                
                ZStack(alignment: .trailing) {
                    Group {
                        if !isSecured {
                            SecureInput(placeholder: "비밀번호", text: $userPassword, width: 300)
                        } else {
                            TextInput(placeholder: "비밀번호", value: $userPassword, width: 300)
                        }
                    }
                    Button(action: {
                        isSecured.toggle()
                    }) {
                        Image(systemName: self.isSecured ? "eye.slash" : "eye").foregroundColor(Color.gray)
                    }
                    .foregroundColor(Color.black)
                    .padding(.trailing, 15)
                }

                NavigationLink(destination: Main()
                                .navigationBarBackButtonHidden(false)
                ) { BasicButton(text: "로그인") }
                    .padding(.vertical)
                
                ScreenTransitionLink(destination: AnyView(Profile()), text: "이메일/비밀번호 찾기")
                ScreenTransitionLink(destination: AnyView(SignUp()), text: "계정이 없으신가요?")
                
            }
        }
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}


