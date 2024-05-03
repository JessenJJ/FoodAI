//
//  FoodModel.swift
//  FoodAI
//
//  Created by User50 on 03/05/24.
//

import Foundation


struct Category: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
}

// MARK: - DUMMY DATA
struct CategoryProvider {
    static func allCategory() -> [Category] {
        let CategoryData = [
            Category(imageName: "greenremove",
                         title: "Vegan Food",
                         description: "Food for someone who gets allergy from meat??"
                         
                        ),
            Category(imageName: "meatremove",
                     title: "Meat Food",
                     description: "Food for someone who REALLY likes meat"
                     
                    ),
            Category(imageName: "bananaremove",
                    title: "Healthy Food",
                     description: "Food for someone who wants to live a long life"
                    ),
            Category(imageName: "cheatremove",
                    title: "Cheat Food", 
                    description: "The day you all waiting for... what? It's everyday!?"
                    )
               
        ]
        return CategoryData
    }
}
