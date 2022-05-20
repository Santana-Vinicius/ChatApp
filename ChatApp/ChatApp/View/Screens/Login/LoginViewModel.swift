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

extension LoginViewModel: HandleButtonInteraction {

    /// This function will Handle the Interaction with the Button
    /// - Parameter type: The kind of button that was tapped.
    func handleAction(type: ButtonTypeProtocol) {
        switch type.identifier {
        case .rounded:
            handleRoundedButtonAction(type: type as! RoundedButtonType)
        case .link:
            handleLinkButtonAction(type: type as! LinkButtonType)
        }
        
        self.validateLoginUser()
    }
    
    /// Function used to handle the interaction with
    /// a RoundedButton
    func handleRoundedButtonAction(type: RoundedButtonType) {
        switch type {
        case .signIn:
            validateLoginUser()
        case .signUp:
            print("CADASTRAR USUÁRIO!")
        }
    }
    
    /// Function used to handle the interaction with a LinkButton
    /// - Parameter type: The LinkButton
    func handleLinkButtonAction(type: LinkButtonType) {
        switch type {
        case .newHere:
            print("NEW HERE")
        case .alreadyHaveAnAccount:
            print("ALREADY HAVE AN ACCOUNT")
        }
    }
}
