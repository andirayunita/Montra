//
//  InputField.swift
//  Montra
//
//  Created by Andira Yunita on 29/01/24.
//

import SwiftUI

struct InputField: View {
    @Binding var text: String
    @State var placeholder: String
    @State var isSecured = false
    @State var isPassField = false
    
    var body: some View {
        ZStack(alignment: .trailing) {
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.white)
                .frame(width: 343, height: 56)
            
            Group {
                if isSecured {
                    SecureField(placeholder, text: $text)
                        .font(.custom("Inter", size: 16))
                } else {
                    TextField(placeholder, text: $text)
                        .font(.custom("Inter", size: 16))
                }
            }
            .autocorrectionDisabled(true)
            .textInputAutocapitalization(.never)
            .padding(.horizontal)
            .frame(width: 343, height: 56)
            
            // PasswordField
            if isPassField {
                Button {
                    isSecured.toggle()
                } label: {
                    Image(systemName: isSecured ? "eye.slash" : "eye")
                        .foregroundColor(.gray)
                }
                .padding(.trailing, 16)
                .frame(width: 343, height: 56, alignment: .trailing)
            }
        }
        .frame(width: 343, height: 56)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
              .stroke(Color.light60, lineWidth: 1)
          )
        .shadow(color: .gray.opacity(0.1), radius: 16, x: 0, y: 0)
    }
}

#Preview {
    InputField(text: .constant(""), placeholder: "Name", isSecured: true, isPassField: true)
}
