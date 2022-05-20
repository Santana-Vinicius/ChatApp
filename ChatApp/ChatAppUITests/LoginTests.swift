//
//  LoginTests.swift
//  ChatAppUITests
//
//  Created by Vinicius Araujo on 19/05/22.
//

import XCTest

class LoginTests: XCTestCase {
    let app = XCUIApplication()
    
    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }
    
    func testLogin() {
        let emailField = app.textFields["Enter your email"]
        XCTAssertNotNil(emailField.waitForExistence(timeout: 2.0))
        emailField.tap()
        emailField.typeText("araujov2001@gmail.com")
        
        let passwordField = app.secureTextFields["Enter your password"]
        XCTAssertNotNil(passwordField.waitForExistence(timeout: 2.0))
        passwordField.tap()
        passwordField.typeText("12345678")
        
        let signInButton = app.buttons["Sign In"]
        XCTAssertNotNil(signInButton.waitForExistence(timeout: 2.0))
        signInButton.tap()
    }
}
