//
//  PasswordConfirmationInRegister.swift
//  Buy or Not
//
//  Created by Noah's Ark on 2022/04/03.
//

import Foundation

class PasswordConfirmationInRegister: ObservableObject {
    @Published var password = ""
    @Published var passwordConfirmation = "" {
        didSet {
            self.PasswordConfirmationCompleted()
        }
    }
    @Published var message = ""
    @Published var matchBoolean = false
    
    func PasswordConfirmationCompleted() {
            if (self.password == self.passwordConfirmation) {
                
                self.message = "비밀번호가 일치합니다."
                self.matchBoolean = true
                
                return
            } else {
                self.message = "비밀번호가 일치하지 않습니다."
                self.matchBoolean = false
                
                return
            }
        }
}
