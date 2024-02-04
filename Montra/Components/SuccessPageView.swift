//
//  SuccessPageView.swift
//  Montra
//
//  Created by Andira Yunita on 04/02/24.
//

import SwiftUI

struct SuccessPageView: View {
    var img: String
    var title: String?
    var subtitle: String
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 18) {
                Image(img)
                    .resizable()
                    .frame(width: 312, height: 312)
                    .padding(.top, 32)
                
                Text(title ?? "")
                    .font(.custom("Inter-SemiBold", size: 24))
                Text(subtitle)
                    .font(.custom("Inter-Medium", size: 16))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 25)
                Spacer()
//                NavigationLink(destination: ResetPasswordView()) {
//                    CustomLongButton(title: "Back to Login", titleColor: .white, bgButtonColor: .violet100)
//                }
            }
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    SuccessPageView(img: "img_email_sent", title: "Your email is on the way", subtitle: "Check your email and follow the instructions to reset your password")
}
