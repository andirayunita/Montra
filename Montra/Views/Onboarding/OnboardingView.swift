//
//  OnboardingView.swift
//  Montra
//
//  Created by Andira Yunita on 25/01/24.
//

import SwiftUI

struct OnboardingView: View {
    private let tabs: [Onboarding] = Onboarding.data
    @State private var selectedTab = 0
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 32) {
                TabView(selection: $selectedTab) {
                    ForEach(tabs) { tab in
                        Group {
                            OnboardingSingleView(content: tab)
                        }
                        .tag(tab.tag)
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
                
                CustomDotIndicator(selectedTab: $selectedTab, count: tabs.count)
                    .padding([.top, .bottom], 33)
                
                VStack(spacing: 16) {
                    NavigationLink(destination: RegisterView()) {
                        CustomLongButton(title: "Sign Up", titleColor: .white, bgButtonColor: .violet100)
                    }
                    
                    NavigationLink(destination: LoginView()) {
                        CustomLongButton(title: "Login", titleColor: .violet100, bgButtonColor: .violet20)
                    }
                }
            }
        }
    }
}

#Preview {
    OnboardingView()
}
