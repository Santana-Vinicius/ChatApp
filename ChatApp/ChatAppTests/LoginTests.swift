//
//  LoginTests.swift
//  ChatAppTests
//
//  Created by Vinicius Araujo on 19/05/22.
//

import XCTest
import ChatApp

/// This file test the methods present on the `LoginViewModel.swift` file
class LoginTests: XCTestCase {
    
    let viewModel: LoginViewModel = LoginViewModel()
    
    /// Here, we are testing the function `validateLoginUser` at
    /// LoginViewModel.swift
    func testLoginValidation() {
        // Seting values to email and password properties
        viewModel.email = "araujov2001@gmail.com"
        viewModel.password = "12345678"
        
        // Validating informations
        viewModel.validateLoginUser()
        XCTAssertTrue(viewModel.canLogin)
    }
}
