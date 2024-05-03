//
//  RecommendationView.swift
//  FoodAI
//
//  Created by User50 on 03/05/24.
//

import SwiftUI

struct RecommendationView: View {
    @StateObject var placeVM = PlaceVM()
    var body: some View {
        NavigationStack {
            List {
                ForEach(placeVM.recom,id: \.self){ item in
                    RecomRow(recom: item)
                    
                    
                }
            }
            .background(Color.cyan.opacity(0.2))
            .navigationBarTitle("Recommendation Food\nOf Today!!")
            .overlay {
                placeVM.recom.isEmpty ? ProgressView() : nil
            }
            .onChange(of: placeVM.isReady) {
                oldValue,newValue in
                if newValue {
                    Task {
                        await placeVM.getPlacesRecommendation()
                    }
                }
            }
//            .task {
//                await placeVM.getPlaces()
//            }
        }
        
    }
    
}

#Preview {
    RecommendationView()
}
