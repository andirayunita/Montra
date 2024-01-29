//
//  NewOnboardingView.swift
//  Montra
//
//  Created by Andira Yunita on 25/01/24.
//

import SwiftUI

struct NewOnboardingView: View {
    private let tabs: [NewOnboarding] = NewOnboarding.data
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack {
            VStack {
                TabView(selection: $selectedTab) {
                    ForEach(tabs) { tab in
                        Group {
                            NewOnboardingSingleView(content: tab)
                        }
                        .tag(tab.tag)
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
                .padding(.bottom, 20)
            }
            .ignoresSafeArea()
        }
        .background(
            Image(tabs[selectedTab].image)
                .resizable()
                .ignoresSafeArea()
                .animation(.easeOut, value: selectedTab)
        )
    }
}

#Preview {
    NewOnboardingView()
}
