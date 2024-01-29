//
//  OnboardingSingleView.swift
//  Montra
//
//  Created by Andira Yunita on 25/01/24.
//

import SwiftUI

struct OnboardingSingleView: View {
    var content: Onboarding
    
    var body: some View {
        VStack {
            Image(content.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 312, height: 312)
            
            VStack(spacing: 16) {
                Text(content.title)
                    .font(.custom("Inter", size: 32))
                    .fontWeight(.bold)
                    .lineLimit(2, reservesSpace: true)
                    .foregroundStyle(Color.dark50)
                
                Text(content.subtitle)
                    .font(.custom("Inter", size: 16))
                    .fontWeight(.medium)
                    .lineSpacing(4)
                    .foregroundStyle(Color.light20)
            }
            .frame(width: 280, height: 180)
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    OnboardingSingleView(content: Onboarding.data[2])
}
