//
//  Onboarding.swift
//  Montra
//
//  Created by Andira Yunita on 25/01/24.
//

import Foundation

struct Onboarding: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var subtitle: String
    var tag: Int
}

extension Onboarding {
    static let data: [Onboarding] = [
        Onboarding(
            image: "money1",
            title: "Gain total control \nof your money",
            subtitle: "Become your own money manager \nand make every cent count",
            tag: 0
        ),
        
        Onboarding(
            image: "money2",
            title: "Know where your \nmoney goes",
            subtitle: "Track your transaction easily, \nwith categories and financial report",
            tag: 1
        ),
        
        Onboarding(
            image: "money3",
            title: "Planning ahead",
            subtitle: "Setup your budget for each\ncategory so you in control",
            tag: 2
        ),
    ]
}
