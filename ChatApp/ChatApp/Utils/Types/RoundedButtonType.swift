//
//  RoundedButtonType.swift
//  ChatApp
//
//  Created by Vinicius Araujo on 19/05/22.
//

import Foundation

public enum RoundedButtonType: ButtonTypeProtocol {
    var identifier: ButtonTypeIdentifier { .rounded }
    
    case signIn
    case signUp
    
    var description: String {
        switch self {
        case .signIn:
            return "Sign In"
        case .signUp:
            return "Sign Up"
        }
    }
}
