//
//  ProfileView.swift
//  Montra
//
//  Created by Andira Yunita on 30/01/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack(spacing: 20) {
                    Image(.andira)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                        .overlay {
                            Circle()
                                .stroke(lineWidth: 3)
                                .foregroundStyle(.violet100)
                        }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Username")
                            .font(.custom("Inter-Medium", size: 14))
                            .foregroundStyle(.light20)
                        Text("Andira Yunita")
                            .font(.custom("Inter-SemiBold", size: 24))
                            .lineLimit(2)
                    }
                    Spacer()
                    Button(action: {
                        print("pencil button tapped")
                    }) {
                        Image("edit")
                            .frame(width: 32, height: 32)
                            .padding(4)
                            .overlay {
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(lineWidth: 2)
                                    .foregroundStyle(.violet20)
                            }
                    }
                }
                .padding(20)
                
                VStack(alignment: .leading, spacing: 14) {
                    RowView(img: "wallet", text: "Account")
                        .padding(.horizontal, 16)
                    Divider()
                    RowView(img: "settings", text: "Settings")
                        .padding(.horizontal, 16)
                    Divider()
                    RowView(img: "upload", text: "Export Data")
                        .padding(.horizontal, 16)
                    Divider()
                    RowView(img: "logout", text: "Logout")
                        .padding(.horizontal, 16)
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 350)
                .background {
                    RoundedRectangle(cornerRadius: 24)
                        .foregroundStyle(.white)
                }
                .padding(.horizontal, 20)
                Spacer()
            }
            .background(Color.light10)
        }
    }
}

#Preview {
    ProfileView()
}
