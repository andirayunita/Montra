//
//  NewOnboarding.swift
//  Montra
//
//  Created by Andira Yunita on 25/01/24.
//

import Foundation

struct NewOnboarding: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var subtitle: String
    var tag: Int
}

extension NewOnboarding {
    static let data: [NewOnboarding] = [
        NewOnboarding(
            image: "clear1",
            title: "Your Life in Lists",
            subtitle: "Clear is a colorful canvas for \nyour thoughts, plans, and goals. \nHere's what makes it uniquely \nfun and effective.",
            tag: 0
        ),
        
        NewOnboarding(
            image: "clear2",
            title: "Radically Simple",
            subtitle: "Clear is a pristine place to think, \ntotally free of distractions or \nfeature clutter.",
            tag: 1
        ),
        
        NewOnboarding(
            image: "clear3",
            title: "Remarkably Fluent",
            subtitle: "Clear's gesture shortcuts are \nintuitive and efficient. Try \npinching to insert or take a \nscreenshot to share a list.",
            tag: 2
        ),
        
        NewOnboarding(
            image: "clear4",
            title: "Strangely Addictive",
            subtitle: "Clear harnesses your dopamine \nwith satisfying sounds, haptics, \nand collectibles that unlock as \nyou get things done.",
            tag: 3
        ),
        
        NewOnboarding(
            image: "clear5",
            title: "Insanely Personalizable",
            subtitle: "Mix and match hundreds of \ncollectibles, totally transforming. \nClear to suit your style and \nwhims.",
            tag: 4
        ),
        
        NewOnboarding(
            image: "clear6",
            title: "Treat Yourself",
            subtitle: "Because it's productive to after a \njob well done. Clear is 100% free \nto use and also a treat to shop in. \nHappy listing!",
            tag: 5
        ),
    ]
}
