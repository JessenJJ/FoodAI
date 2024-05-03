//
//  ContentView.swift
//  PlacesAI
//
//  Created by User50 on 24/04/24.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView {
            CategoryView()
                .tabItem { Label("Browse", systemImage: "square.grid.2x2") }
            
            RecommendationView()
                .tabItem { Label("Recommendation",systemImage: "play.rectangle") }
            PopularView()
                .tabItem { Label("Popular",systemImage: "play.rectangle") }
            
            
        }
    }
     
        
    
}

#Preview {
    ContentView()
}
