//
//  CustomLongButton.swift
//  Montra
//
//  Created by Andira Yunita on 25/01/24.
//

import SwiftUI

struct CustomLongButton: View {
    let title: String
    let titleColor: Color
    let bgButtonColor: Color
    var isWithOtherApp = false
    var iconLogo = ""
    
    var body: some View {
        if isWithOtherApp {
            HStack(spacing: 10) {
                Image(iconLogo)
                    .resizable()
                    .frame(width: 32, height: 32)
                    .aspectRatio(contentMode: .fit)

                Text(title)
                    .font(.custom("Inter", size: 18))
                    .fontWeight(.semibold)
                    .foregroundStyle(titleColor)
            }
            .padding()
            .frame(width: 343, height: 56)
            .background {
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.light60, lineWidth: 1)
                    .foregroundStyle(bgButtonColor)
            }
            
        } else {
            Text(title)
                .font(.custom("Inter", size: 18))
                .fontWeight(.semibold)
                .foregroundStyle(titleColor)
                .padding()
                .frame(width: 343, height: 56)
                .background {
                    RoundedRectangle(cornerRadius: 16)
                        .foregroundStyle(bgButtonColor)
                }
        }
    }
}

#Preview {
    CustomLongButton(title: "Sign Up With Google", titleColor: .black, bgButtonColor: .white, isWithOtherApp: true, iconLogo: "ic_google")
}
