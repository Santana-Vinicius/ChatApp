//
//  LinkButtonType.swift
//  ChatApp
//
//  Created by Vinicius Araujo on 19/05/22.
//

import Foundation

public enum LinkButtonType: ButtonTypeProtocol {
    var identifier: ButtonTypeIdentifier { .link }
    
    case newHere
    case alreadyHaveAnAccount
    
    var question: String {
        switch self {
        case .newHere:
            return "New Here?"
        case .alreadyHaveAnAccount:
            return "Already have an account?"
        }
    }
    
    var answer: String {
        switch self {
        case .newHere:
            return "Sign Up"
        case .alreadyHaveAnAccount:
            return "Sign In"
        }
    }
}
