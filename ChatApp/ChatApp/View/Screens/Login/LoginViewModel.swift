//
//  LoginViewModel.swift
//  ChatApp
//
//  Created by Vinicius Araujo on 06/05/22.
//

import Foundation
import SwiftUI

public class LoginViewModel: ObservableObject {
    @Published public var email: String = ""
    @Published public var password: String = ""
    @Published public var canLogin: Bool = false
    
    // MARK: - Initializers
    public init() { }
    
    // MARK: - Methods
    
    /// This funciton will be used to validate the login.
    /// If the user informs the right credential then
    /// the system will set the `canLogin` property
    /// to `true`
    public func validateLoginUser() {
        if email == "araujov2001@gmail.com" && password == "12345678" {
            canLogin = true
        }
    }
}

extension LoginViewModel: HandleRoundedButtonInteraction {
    func action() {
        validateLoginUser()
    }
}
