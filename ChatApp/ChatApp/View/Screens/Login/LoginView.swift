//
//  LoginView.swift
//  ChatApp
//
//  Created by Vinicius Araujo on 05/05/22.
//

import SwiftUI

struct LoginView: View {
    @StateObject var loginViewModel = LoginViewModel()
    
    var body: some View {
        VStack  {
            Text("Hello.")
                .font(.system(size: 30))
                .fontWeight(.semibold)
                .padding(.top, 40)
            
            Text("Welcome Back!")
                .font(.system(size: 30))
                .foregroundColor(AppColors.blueFont.color)
                .fontWeight(.semibold)
            
            Spacer()
            
            CustomTextField(text: $loginViewModel.email, type: .email)
                .padding(.bottom, 15)
            CustomTextField(text: $loginViewModel.password, type: .password)
                .padding(.bottom, 85)
            
            RoundedButton(buttonHandler: RoundedButtonHandler(actionHandler: loginViewModel),
                          type: .signIn)
            Spacer()
            
            LinkButton(type: .newHere)
                .padding(.bottom, 60)
        }
        .padding(.leading)
        .fullScreenCover(isPresented: $loginViewModel.canLogin) {
            ContactsView()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
