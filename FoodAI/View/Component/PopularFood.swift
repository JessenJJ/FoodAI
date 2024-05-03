//
//  PopularFood.swift
//  FoodAI
//
//  Created by User50 on 03/05/24.
//

import SwiftUI

struct PopularFood: View {
    let popular: PopularModel
    
    var body: some View {
        HStack(spacing:16) {
            Image(popular.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90,height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment:.leading) {
                Text(popular.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundStyle(.blue)
                Text(popular.headline)
                    .font(.footnote)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }
        }
        .onTapGesture {
            // Navigate to the destination specified by popular.link
            if let url = URL(string: popular.link) {
                UIApplication.shared.open(url)
            }
        }
    }
}

#Preview {
    let popular: [PopularModel] = Bundle.main.decode("popular.json")
    return PopularFood(popular: popular[0])
}
