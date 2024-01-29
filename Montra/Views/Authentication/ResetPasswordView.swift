//
//  ResetPasswordView.swift
//  Montra
//
//  Created by Andira Yunita on 30/01/24.
//

import SwiftUI

struct ResetPasswordView: View {
    @State private var newPassword = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                InputField(text: $newPassword, placeholder: "New Password", isSecured: true, isPassField: true)
                    .padding(.top, 56)
                
                InputField(text: $confirmPassword, placeholder: "Retype new password", isSecured: true, isPassField: true)
                
//                NavigationLink(destination: ResetPasswordView()) {
                    CustomLongButton(title: "Continue", titleColor: .white, bgButtonColor: .violet100)
                    .padding(.top, 8)
//                }
                Spacer()
            }
            .navigationTitle("Reset Password")
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
    ResetPasswordView()
}
