//
//  PlacesAIApp.swift
//  PlacesAI
//
//  Created by User50 on 24/04/24.
//

import SwiftUI
import FirebaseCore


@main
struct PlacesAIApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
