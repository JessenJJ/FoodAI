//
//  PopularView.swift
//  FoodAI
//
//  Created by User50 on 03/05/24.
//

import SwiftUI

struct PopularView: View {
    let popular: [PopularModel] = Bundle.main.decode("popular.json")
    
    var body: some View {
        NavigationStack {
            Group {
                List {
                    ForEach(popular) { item in
                        
                        PopularFood(popular: item)
                        
                        
                    }
                }
            }
        }
    }
}

#Preview {
    PopularView()
}
