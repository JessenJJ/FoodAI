//
//  CheatFoodView.swift
//  FoodAI
//
//  Created by User50 on 02/05/24.
//

import SwiftUI

struct CheatFoodView: View {
    @StateObject var placeVM = PlaceVM()
    var body: some View {
        NavigationStack {
            List {
                ForEach(placeVM.place,id: \.self){ item in
                    PlaceRow(place: item)
                    
                    
                }
            }
            .navigationTitle("Cheat Food")
            .overlay {
                placeVM.place.isEmpty ? ProgressView() : nil
            }
            .onChange(of: placeVM.isReady) {
                oldValue,newValue in
                if newValue {
                    Task {
                        await placeVM.getPlacesCheat()
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
    CheatFoodView()
}
