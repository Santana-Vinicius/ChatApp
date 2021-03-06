//
//  CustomButtom.swift
//  ChatApp
//
//  Created by Vinicius Araujo on 16/05/22.
//

import SwiftUI

struct RoundedButton<ButtonHandler: HandleButtonInteraction>: View {
    var buttonHandler: ButtonHandler
    var type: RoundedButtonType
    
    var body: some View {
        Button {
            buttonHandler.handleAction()
        } label: {
            RoundedButtonLabel(type: type)
        }
    }
}

struct RoundedButtonLabel: View {
    var type: RoundedButtonType
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 240, height: 40)
                .foregroundColor(.blue)
            
            Text(type.description)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .font(.system(size: 20))
                
        }
    }
}

struct CustomButtom_Previews: PreviewProvider {
    static var buttonHandler = RoundedButtonHandler(actionHandler: LoginViewModel())
    static var previews: some View {
        RoundedButton(buttonHandler: buttonHandler, type: .signIn)
    }
}
