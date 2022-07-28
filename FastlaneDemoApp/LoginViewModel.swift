//
//  LoginViewModel.swift
//  FastlaneDemoApp
//
//  Created by Bhooshan Patil on 20/07/22.
//

import Foundation

struct LoginViewModel {
    func isValidEmailAddress(email: String) -> Bool {
        if email.isEmpty { return false }
        return isValidEmail(email: email)
    }
    
    func isValidEmail(email: String) ->Bool {
        let regularExpressionForEmail = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let testEmail = NSPredicate(format:"SELF MATCHES %@", regularExpressionForEmail)
        return testEmail.evaluate(with: email)
    }
    
    func isValidPhone() -> Bool {
        let regularExpressionForPhone = "^\\d{3}-\\d{3}-\\d{4}$"
        let testPhone = NSPredicate(format:"SELF MATCHES %@", regularExpressionForPhone)
        return testPhone.evaluate(with: self)
    }
    
}
