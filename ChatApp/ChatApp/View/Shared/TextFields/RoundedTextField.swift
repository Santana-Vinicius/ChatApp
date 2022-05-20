//
//  PasswordTextField.swift
//  ChatApp
//
//  Created by Vinicius Araujo on 06/05/22.
//

import SwiftUI

struct RoundedTextField: View {
    @State var builder: TextFieldBuilder
    @Binding var text: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 1)
                .blur(radius: 0.5)
                .foregroundColor(.gray)
                .frame(width: 310, height: 40)
                .foregroundColor(.clear)
            
            builder.getTextField(text: $text)
        }
    }
}

struct PasswordTextField_Previews: PreviewProvider {
    @State static var text: String = ""
    @State static var viewModel = TextFieldBuilder(type: .email)
    static var previews: some View {
        RoundedTextField(builder: viewModel, text: $text)
    }
}
