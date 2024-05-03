//
//  VeganFood.swift
//  FoodAI
//
//  Created by User50 on 02/05/24.
//

import SwiftUI

struct VeganFoodView: View {
    @StateObject var placeVM = PlaceVM()
    var body: some View {
        NavigationStack {
            List {
                ForEach(placeVM.place,id: \.self){ item in
                    PlaceRow(place: item)
                    
                    
                }
            }
            .navigationTitle("Vegan Food")
            .overlay {
                placeVM.place.isEmpty ? ProgressView() : nil
            }
            .onChange(of: placeVM.isReady) {
                oldValue,newValue in
                if newValue {
                    Task {
                        await placeVM.getPlacesVegan()
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
    VeganFoodView()
}
