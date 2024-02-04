//
//  HomepageView.swift
//  Montra
//
//  Created by Andira Yunita on 29/01/24.
//

import SwiftUI

struct HomepageView: View {
//    @Environment(\.dismiss) private var dismiss
//    var userData: UserData
//    
//    init(userData: UserData) {
//        self.userData = userData
//    }
    
    var body: some View {
//        VStack(spacing: 12) {
//            Text("Welcome, \(userData.name ?? "")!")
//                .font(.title)
//            Text("Your email is \(userData.email ?? "")")
//            Text("Your password is \(userData.password ?? "")")
//            Text("Accepted Terms: \(userData.acceptTerms ?? false ? "Yes" : "No")")
//        }
//        .padding()
//        .navigationBarBackButtonHidden()
        Text("Hi Homepage")
    }
}

#Preview {
//    HomepageView(userData: UserData(name: "Andira", email: "andira@gmail.com", password: "123456", acceptTerms: true))
    HomepageView()
}
