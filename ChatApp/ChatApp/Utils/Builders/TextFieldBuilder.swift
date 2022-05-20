//
//  TextFieldBuilder.swift
//  ChatApp
//
//  Created by Vinicius Araujo on 07/05/22.
//

import Foundation
import SwiftUI

public struct TextFieldBuilder {
    var type: TextFieldType
    
    init(type: TextFieldType) {
        self.type = type
    }
    
    /// Function used to generate different kinds of TextFields
    /// - Parameter text: The Binding variable you want to store the text
    /// - Returns: Return a TextField or a SecureField
    @ViewBuilder
    func getTextField(text: Binding<String>) -> some View {
        if type == .password {
            SecureField("Enter your password", text: text).frame(width: 290, height: 30)
        } else {
            TextField("Enter your email", text: text).frame(width: 290, height: 30).autocapitalization(.none)
        }
    }
}
