//
//  Recomend.swift
//  FoodAI
//
//  Created by User50 on 03/05/24.
//

import Foundation

struct Recomend: Codable, Hashable {
    var place,activity,price: String
    var latitude,longitude: String
}

extension Recomend {
    static let dummyDataRecomend: [Recomend] = [
        Recomend (
            place: "Baso Damas",
            activity: "Eat meat balls",
            price: "150.000",
            latitude:"-6.221555537318924",
            longitude:"106.86769521068311"
        )
    ]
}
