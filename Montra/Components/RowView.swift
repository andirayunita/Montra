//
//  RowView.swift
//  Montra
//
//  Created by Andira Yunita on 04/02/24.
//

import SwiftUI

struct RowView: View {
    var img: String
    var text: String
    
    var body: some View {
        HStack(spacing: 25) {
            Image(img)
                .resizable()
                .frame(width: 32, height: 32)
                .background {
                    RoundedRectangle(cornerRadius: 16)
                        .frame(width: 52, height: 52)
                        .foregroundStyle(.violet20)
                }
            
            Text(text)
                .font(.custom("Inter-Medium", size: 16))
        }
        .padding(.vertical, 14)
        .padding(.horizontal, 16)
    }
}

#Preview {
    RowView(img: "wallet", text: "Account")
}
