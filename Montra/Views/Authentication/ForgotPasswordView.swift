//
//  ForgotPasswordView.swift
//  Montra
//
//  Created by Andira Yunita on 30/01/24.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State private var email = ""
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 46) {
                Text("Don’t worry. \nEnter your email and we’ll send you a link to reset your password.")
                    .font(.custom("Inter-SemiBold", size: 24))
                    .padding(.horizontal, 16)
                    .padding(.top, 69)
                
                InputField(text: $email, placeholder: "Email")
                
                NavigationLink(destination: ResetPasswordView()) {
                    CustomLongButton(title: "Continue", titleColor: .white, bgButtonColor: .violet100)
                }
                Spacer()
            }
            .navigationTitle("Forgot Password")
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
    ForgotPasswordView()
}
