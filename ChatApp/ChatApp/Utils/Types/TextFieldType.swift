//
//  TextFieldType.swift
//  ChatApp
//
//  Created by Vinicius Araujo on 06/05/22.
//

import Foundation

public enum TextFieldType {
    case email
    case password
    
    var imageName: String {
        switch self {
        case .email:
            return "envelope"
        case .password:
            return "lock"
        }
    }
    
    var text: String {
        switch self {
        case .email:
            return "Email"
        case .password:
            return "Password"
        }
    }
}
