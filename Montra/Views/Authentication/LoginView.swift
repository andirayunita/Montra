//
//  LoginView.swift
//  Montra
//
//  Created by Andira Yunita on 29/01/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @Environment(\.dismiss) private var dismiss
    
    var userData: UserData {
        let user = UserData(email: email, password: password)
        return user
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                InputField(text: $email, placeholder: "Email")
                InputField(text: $password, placeholder: "Password", isSecured: true, isPassField: true)
                
                NavigationLink(destination: HomepageView(userData: userData)) {
                    CustomLongButton(title: "Login", titleColor: .white, bgButtonColor: .violet100)
                        .padding(.top, 16)
                }
                
                NavigationLink(destination: ForgotPasswordView()) {
                    Text("Forgot Password?")
                        .font(.custom("Inter-SemiBold", size: 18))
                        .foregroundStyle(Color.violet100)
                        .padding([.top, .bottom], 10)
                }
                
                NavigationLink(destination: RegisterView()) {
                    HStack(spacing: 4) {
                        Text("Don't have an account yet?")
                            .font(.custom("Inter-Medium", size: 16))
                            .foregroundStyle(.light20)
                        
                        Text("Register")
                            .font(.custom("Inter-Medium", size: 16))
                            .foregroundStyle(.violet100)
                            .underline()
                    }
                }
            }
            .navigationTitle("Login")
            .navigationBarBackButtonHidden()
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "arrow.left")
                            .foregroundStyle(.dark50)
                    }
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
