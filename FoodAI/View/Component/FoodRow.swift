//
//  FoodRow.swift
//  FoodAI
//
//  Created by User50 on 03/05/24.
//

import SwiftUI

struct FoodRow: View {
    var Food: Category
    @Binding var selectedItem: String
    var body: some View {
        HStack{
            Image(Food.imageName)
                .resizable()
                .frame(width: 100,height: 100)
            Spacer()
            VStack (alignment:.leading){
                Text(Food.title)
                    .fontWeight(.bold)
                    .font(.title)
                Text(Food.description)
                    .fontWeight(.bold)
                    .font(.subheadline)
                    .lineLimit(2)
                
            }
            .padding()
            
            
        }
        .onTapGesture {
            // Set the flag to true to present the VeganFoodView
//            isVeganFoodViewPresented = true
        }
        .frame(minWidth: 0,maxWidth: .infinity)
        .background(.blue.opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding()
        .frame(minWidth: 0,maxWidth: .infinity)
        .background(.blue.opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding(.horizontal)
    }
}

#Preview {
    @State var selectedItem = "vegan"
    return FoodRow(Food: CategoryProvider.allCategory().first!, selectedItem: $selectedItem)
        .padding()
}
