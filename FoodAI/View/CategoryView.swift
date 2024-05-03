//
//  CategoryView.swift
//  FoodAI
//
//  Created by User50 on 03/05/24.
//

import SwiftUI

struct CategoryView: View {
    @State private var category: [Category] = CategoryProvider.allCategory()
    @StateObject var placeVM = PlaceVM()
    
    @State private var isVeganFoodViewPresented = false
    @State private var isMeatFoodViewPresented = false
    @State private var isHealthyFoodViewPresented = false
    @State private var isCheatFoodViewPresented = false
    
    var body: some View {
        
        //        NavigationStack {
        //            List(category){ item in
        //                NavigationLink {
        //                    RecommendationView(recommendation: item)
        //                } label: {
        //                    FoodRow(Food: item,selectedItem: item.title)
        //
        //                }
        //
        //            }
        //            .listStyle(.plain)
        //            .navigationTitle("Healthy Food")
        //        }
        
        NavigationStack {
            VStack {
                HStack{
                    Image(.greenremove)
                        .resizable()
                        .frame(width: 100,height: 100)
                    Spacer()
                    VStack (alignment:.leading){
                        Text("Vegan Food")
                            .fontWeight(.bold)
                            .font(.title)
                        Text("Food for somepone who get allergy at meat??")
                            .fontWeight(.bold)
                            .font(.subheadline)
                            .lineLimit(2)
                        
                    }
                    .padding()
                    
                    
                }
                .onTapGesture {
                    // Set the flag to true to present the VeganFoodView
                    isVeganFoodViewPresented = true
                }
                .sheet(isPresented: $isVeganFoodViewPresented) {
                    VeganFoodView()
                }
                .frame(minWidth: 0,maxWidth: .infinity)
                .background(.blue.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding()
                .frame(minWidth: 0,maxWidth: .infinity)
                .background(.blue.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding(.horizontal)
                
                HStack{
                    Image(.meatremove)
                        .resizable()
                        .frame(width: 100,height: 100)
                    Spacer()
                    VStack (alignment:.leading){
                        Text("Meat Food")
                            .fontWeight(.bold)
                            .font(.title)
                        Text("Food for somepone who REALLY likes meat")
                            .fontWeight(.bold)
                            .font(.subheadline)
                            .lineLimit(2)
                        
                    }
                    .padding()
                    
                    
                }
                .onTapGesture {
                    // Set the flag to true to present the VeganFoodView
                    isMeatFoodViewPresented = true
                }
                .sheet(isPresented: $isMeatFoodViewPresented) {
                    MeatFoodView()
                }
                .frame(minWidth: 0,maxWidth: .infinity)
                .background(.blue.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding()
                .frame(minWidth: 0,maxWidth: .infinity)
                .background(.blue.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding(.horizontal)
                
                
                HStack{
                    Image(.bananaremove)
                        .resizable()
                        .frame(width: 100,height: 100)
                        .padding(.leading,8)
                    Spacer()
                    VStack (alignment:.leading){
                        Text("Healhty Food")
                            .fontWeight(.bold)
                            .font(.title)
                        Text("Food for somepone wants to life a long life")
                            .fontWeight(.bold)
                            .font(.subheadline)
                            .lineLimit(2)
                        
                    }
                    .padding()
                    
                    
                }
                .onTapGesture {
                    // Set the flag to true to present the VeganFoodView
                    isHealthyFoodViewPresented = true
                }
                .sheet(isPresented: $isHealthyFoodViewPresented) {
                    HealthyFoodView()
                }
                .frame(minWidth: 0,maxWidth: .infinity)
                .background(.blue.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding()
                .frame(minWidth: 0,maxWidth: .infinity)
                .background(.blue.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding(.horizontal)
                
                HStack{
                    Image(.cheatremove)
                        .resizable()
                        .frame(width: 100,height: 100)
                    Spacer()
                    VStack (alignment:.leading){
                        Text("Cheat Food")
                            .fontWeight(.bold)
                            .font(.title)
                        Text("The day you all waiting for... what? it's everyday!?")
                            .fontWeight(.bold)
                            .font(.subheadline)
                            .lineLimit(2)
                        
                    }
                    .padding()
                    
                    
                }
                .onTapGesture {
                    // Set the flag to true to present the VeganFoodView
                    isCheatFoodViewPresented = true
                }
                .sheet(isPresented: $isCheatFoodViewPresented) {
                    CheatFoodView()
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
            .navigationTitle("Food To Go")
            .navigationBarTitleDisplayMode(.large)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            
            
        }
        
        
        
        
    }
     
        
    
}

#Preview {
    CategoryView()
}
