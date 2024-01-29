//
//  CustomDotIndicator.swift
//  Montra
//
//  Created by Andira Yunita on 25/01/24.
//

import SwiftUI

struct CustomDotIndicator: View {
    @Binding var selectedTab: Int
    let count: Int
    
    var body: some View {
        HStack {
            ForEach(0..<count, id: \.self) { tab in
                Circle()
                    .fill(tab == selectedTab ? Color.violet100 : Color.violet20)
                    .scaleEffect(tab == selectedTab ? 2.0 : 1.0)
                    .frame(width: 8, height: 8)
                    .padding(.horizontal, 4)
                    .onTapGesture {
                        selectedTab = tab
                    }
            }
        }
        .animation(.easeOut, value: selectedTab)
    }
}

#Preview {
    @State var selectedTab = 0
    return CustomDotIndicator(selectedTab: $selectedTab, count: 3)
}
