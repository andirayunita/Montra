//
//  TransactionCard.swift
//  Montra
//
//  Created by Andira Yunita on 04/02/24.
//

import SwiftUI

struct TransactionCard: View {
    var logo: String
    var logoBgColor: Color
    var title: String
    var desc: String
    var price: String
    var priceColor: Color
    var time: String
    
    var body: some View {
        HStack(spacing: 25) {
            Image(logo)
                .resizable()
                .frame(width: 40, height: 40)
                .background {
                    RoundedRectangle(cornerRadius: 16)
                        .frame(width: 60, height: 60)
                        .foregroundStyle(logoBgColor)
                }
            
            VStack(alignment: .leading, spacing: 13) {
                Text(title)
                    .font(.custom("Inter-Medium", size: 16))
                Text(desc)
                    .font(.custom("Inter-Medium", size: 13))
                    .foregroundStyle(.light20)
                    .lineLimit(1)
            }
            
            VStack(alignment: .trailing, spacing: 13) {
                Text("Rp \(price)")
                    .font(.custom("Inter-SemiBold", size: 16))
                    .foregroundStyle(priceColor)
                Text(time)
                    .font(.custom("Inter-Medium", size: 13))
                    .foregroundStyle(.light20)
            }
        }
        .padding(.vertical, 14)
        .padding(.horizontal, 16)
        .padding(16)
        .background {
            RoundedRectangle(cornerRadius: 24)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 89)
                .foregroundStyle(.light80)
        }
    }
}

#Preview {
    TransactionCard(logo: "shopping-bag", logoBgColor: .yellow20, title: "Shopping", desc: "Buy some groceries", price: "100.000", priceColor: .red, time: "10.00 AM")
}
