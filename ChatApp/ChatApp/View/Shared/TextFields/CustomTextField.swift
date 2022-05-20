//
//  CustomTextField.swift
//  ChatApp
//
//  Created by Vinicius Araujo on 05/05/22.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    var type: TextFieldType
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Image(systemName: type.imageName)
                    .padding(.trailing, 5)
                    .foregroundColor(AppColors.grayFont.color)
                
                Text(type.text)
                    .foregroundColor(AppColors.grayFont.color)
            }
            RoundedTextField(builder: TextFieldBuilder(type: type), text: $text)
        }
    }
}

struct CustomTextField_Previews: PreviewProvider {
    @State static var text: String = ""
    
    static var previews: some View {
        CustomTextField(text: $text, type: .password)
    }
}
