//
//  Place.swift
//  PlacesAI
//
//  Created by User50 on 24/04/24.
//

import Foundation

struct Place: Codable, Hashable {
    var place,activity,price: String
    var latitude,longitude: String
}

extension Place {
    static let dummyData: [Place] = [
        Place (
            place: "Baso Damas",
            activity: "Eat meat balls",
            price: "150.000",
            latitude:"-6.221555537318924",
            longitude:"106.86769521068311"
        )
    ]
}
