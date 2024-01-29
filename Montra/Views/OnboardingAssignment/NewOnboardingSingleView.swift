//
//  NewOnboardingSingleView.swift
//  Montra
//
//  Created by Andira Yunita on 25/01/24.
//

import SwiftUI

struct NewOnboardingSingleView: View {
    var content: NewOnboarding
    
    var body: some View {
        ZStack {
            // MARK: - This Image here is optional, you can use it or not. The result is the same.
//            Image(content.image)
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .ignoresSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 10) {
                Spacer()
                Text(content.title)
                    .font(.custom("Inter-Bold", size: 30))
                    .lineLimit(2)
                    .foregroundStyle(Color.white)
                
                Text(content.subtitle)
                    .font(.custom("Inter-Medium", size: 18))
                    .lineSpacing(3)
                    .lineLimit(4, reservesSpace: true)
                    .foregroundStyle(Color.white)
            }
            .padding([.top, .bottom], 100)
            .frame(maxWidth: 330, alignment: .bottom)
        }
    }
}

#Preview {
    NewOnboardingSingleView(content: NewOnboarding.data[4])
}
