//
//  RegisterView.swift
//  Montra
//
//  Created by Andira Yunita on 29/01/24.
//

import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var acceptTerms: Bool = false
    @State private var isRegistered = false
    @Environment(\.dismiss) private var dismiss
    
    var userData: UserData {
        let user = UserData(name: name, email: email, password: password, acceptTerms: acceptTerms)
        return user
    }
    
    var terms: AttributedString {
        var result = AttributedString("Terms of Service and Privacy Policy")
        result.link = URL(string: "https://www.moyahexagon.com")
        result.foregroundColor = .violet100
        return result
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                InputField(text: $name, placeholder: "Name")
                InputField(text: $email, placeholder: "Email")
                InputField(text: $password, placeholder: "Password", isSecured: true, isPassField: true)
                
                Button {
                    acceptTerms.toggle()
                } label: {
                    HStack(spacing: 8) {
                        Image(systemName: acceptTerms ? "checkmark.square.fill" : "square")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundStyle(.violet100)
                        Text("By signing up, you agree to the \(terms)")
                            .font(.custom("Inter", size: 14))
                            .foregroundStyle(.dark50)
                            .multilineTextAlignment(.leading)
                    }
                    .padding(.horizontal, 20)
                }
                
                VStack(spacing: 12) {
                    NavigationLink(destination: HomepageView(userData: userData)) {
                        CustomLongButton(title: "Sign Up", titleColor: .white, bgButtonColor: .violet100)
                    }
                    Text("Or with")
                        .font(.custom("Inter-Bold", size: 14))
                        .foregroundStyle(.light20)
                    
                    CustomLongButton(title: "Sign Up with Google", titleColor: .dark50, bgButtonColor: .white, isWithOtherApp: true, iconLogo: "ic_google")
                }
                
                NavigationLink(destination: LoginView()) {
                    HStack(spacing: 4) {
                        Text("Already have an account?")
                            .font(.custom("Inter-Medium", size: 16))
                            .foregroundStyle(.light20)
                        
                        Text("Login")
                            .font(.custom("Inter-Medium", size: 16))
                            .foregroundStyle(.violet100)
                            .underline()
                    }
                }
            }
            .navigationTitle("Sign Up")
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
    RegisterView()
}
