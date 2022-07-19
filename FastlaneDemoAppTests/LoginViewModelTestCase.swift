//
//  LoginViewModelTestCase.swift
//  FastlaneDemoAppTests
//
//  Created by Bhooshan Patil on 20/07/22.
//

import Foundation
import XCTest
@testable import FastlaneDemoApp


class LoginViewModelTestCase: XCTestCase {
    
    let viewModel = LoginViewModel()

    func testValidEmailId_emptyEmail_shouldFail() {
        let result = viewModel.isValidEmailAddress(email: "")
        assert(result == false, "email id can not be empty")
    }
    
    func testValidEmail_validEmail_pass() {
        let result = viewModel.isValidEmailAddress(email: "hello@mailinator.com")
        assert(result, "email id is valid")
    }
    
    func testValidEmail_invalidEmail_fail() {
        let result = viewModel.isValidEmailAddress(email: "hellomailinator.com")
        assert(result == false, "email id is not valid format")
    }
}
