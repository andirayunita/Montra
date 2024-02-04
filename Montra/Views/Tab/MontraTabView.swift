//
//  MontraTabView.swift
//  Montra
//
//  Created by Andira Yunita on 04/02/24.
//

import SwiftUI

struct MontraTabView: View {
    @State var index = 0
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        VStack {
            ZStack {
                HomepageView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .opacity(self.index == 0 ? 1 : 0)
                
                TransactionView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .opacity(self.index == 1 ? 1 : 0)
                
                BudgetView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .opacity(self.index == 2 ? 1 : 0)
                
                ProfileView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.light10)
                    .opacity(self.index == 3 ? 1 : 0)
                
                Text("Add")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.violet100)
                    .opacity(self.index == 4 ? 1 : 0)
            }
            
            CustomTabBarView(index: self.$index)
        }
        .background(Color.white)
        .ignoresSafeArea()
    }
}

struct CustomTabBarView: View {
    @Binding var index: Int
    
    var body: some View {
        VStack {
            CustomTabBarShape()
                .fill(Color.white)
                .frame(height: 90)
                .shadow(color: Color.black.opacity(0.4), radius: 2, x: 0, y: -1)
                .overlay(
                    Button {
                        self.index = 0
                    } label: {
                        VStack(spacing: 4) {
                            Image(systemName: "house")
                            Text("Home")
                                .font(.custom("Inter-Medium", size: 10))
                        }
                    }
                    .font(.title3)
                    .foregroundStyle(index == 0 ? Color.violet100 : Color.light20)
                    .offset(x: -145, y: -15)
                )
                .overlay(
                    Button {
                        self.index = 1
                    } label: {
                        VStack(spacing: 4) {
                            Image(systemName: "arrow.left.arrow.right")
                            Text("Transaction")
                                .font(.custom("Inter-Medium", size: 10))
                        }
                    }
                    .font(.title3)
                    .foregroundStyle(index == 1 ? Color.violet100 : Color.light20)
                    .offset(x: -80, y: -15)
                )
                .overlay(
                    Button {
                        self.index = 2
                    } label: {
                        VStack(spacing: 4) {
                            Image(systemName: "timer")
                            Text("Budget")
                                .font(.custom("Inter-Medium", size: 10))
                        }
                    }
                    .font(.title3)
                    .foregroundStyle(index == 2 ? Color.violet100 : Color.light20)
                    .offset(x: 80, y: -15)
                )
                .overlay(
                    Button {
                        self.index = 3
                    } label: {
                        VStack(spacing: 4) {
                            Image(systemName: "person.circle")
                            Text("Profile")
                                .font(.custom("Inter-Medium", size: 10))
                        }
                    }
                    .font(.title3)
                    .foregroundStyle(index == 3 ? Color.violet100 : Color.light20)
                    .offset(x: 145, y: -15)
                )
                .overlay(
                    Button {
                        self.index = 4
                    } label: {
                        Image(systemName: "plus")
                            .padding()
                            .background(Color.violet100)
                            .clipShape(Circle())
                            .tint(.white)
                    }
                    .offset(x: 0, y: -36)
                )
        }
        .frame(maxWidth: .infinity)
        .ignoresSafeArea(.all)
    }
}

#Preview {
    MontraTabView()
}
