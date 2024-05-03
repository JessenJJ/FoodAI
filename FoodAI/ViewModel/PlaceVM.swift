//
//  PlaceVM.swift
//  PlacesAI
//
//  Created by User50 on 24/04/24.
//

import Foundation
import GoogleGenerativeAI
import FirebaseCore

@MainActor
class PlaceVM: ObservableObject {
    private var geminiModel: GenerativeModel?
    @Published var place: [Place] = []
    @Published var recom: [Recomend] = []
    @Published var isReady: Bool = false
    
    init() {
//        self.geminiModel = GenerativeModel(name: "gemini-pro", apiKey: Constant.APIkey)
        configureGenerativeModel()
        
    }
    
    func configureGenerativeModel(){
        Task {
            do {
                let apikey: String = try await RemoteConfigService.shared.fetchConfig(forKey: .apiKey)
                geminiModel = GenerativeModel(name:"gemini-pro", apiKey: apikey)
                self.isReady = true
            } catch {
                print("Error configuring Generative Model: \(error)")
            }
        }
    }
    
    
    func getPlacesVegan() async {
        let prompt = Constant.promptVegan
        
        guard let geminiModel = self.geminiModel else {
            print("Generative Model is not Configured")
            return
        }
        
        do {
            let response = try await geminiModel.generateContent(prompt)
            guard let text = response.text, let data  = text.data(using: .utf8) else {
                print ("😵😵‍💫 Unable to extract text or convert to data")
                return
            }
            place = try JSONDecoder().decode([Place].self,from:data)
            
        } catch {
            print("💩 ERROR fetching places: \(error.localizedDescription)")
        }
    }
    func getPlacesMeat() async {
        let prompt = Constant.promptMeat
        
        guard let geminiModel = self.geminiModel else {
            print("Generative Model is not Configured")
            return
        }
        
        do {
            let response = try await geminiModel.generateContent(prompt)
            guard let text = response.text, let data  = text.data(using: .utf8) else {
                print ("😵😵‍💫 Unable to extract text or convert to data")
                return
            }
            place = try JSONDecoder().decode([Place].self,from:data)
            
        } catch {
            print("💩 ERROR fetching places: \(error.localizedDescription)")
        }
    }
    func getPlacesHealthy() async {
        let prompt = Constant.promptHealthy
        
        guard let geminiModel = self.geminiModel else {
            print("Generative Model is not Configured")
            return
        }
        
        do {
            let response = try await geminiModel.generateContent(prompt)
            guard let text = response.text, let data  = text.data(using: .utf8) else {
                print ("😵😵‍💫 Unable to extract text or convert to data")
                return
            }
            place = try JSONDecoder().decode([Place].self,from:data)
            
        } catch {
            print("💩 ERROR fetching places: \(error.localizedDescription)")
        }
    }
    func getPlacesCheat() async {
        let prompt = Constant.promptCheat
        
        guard let geminiModel = self.geminiModel else {
            print("Generative Model is not Configured")
            return
        }
        
        do {
            let response = try await geminiModel.generateContent(prompt)
            guard let text = response.text, let data  = text.data(using: .utf8) else {
                print ("😵😵‍💫 Unable to extract text or convert to data")
                return
            }
            place = try JSONDecoder().decode([Place].self,from:data)
            
        } catch {
            print("💩 ERROR fetching places: \(error.localizedDescription)")
        }
    }
    func getPlacesRecommendation() async {
        let prompt = Constant.promptRecommendation
        
        guard let geminiModel = self.geminiModel else {
            print("Generative Model is not Configured")
            return
        }
        
        do {
            let response = try await geminiModel.generateContent(prompt)
            guard let text = response.text, let data  = text.data(using: .utf8) else {
                print ("😵😵‍💫 Unable to extract text or convert to data")
                return
            }
            recom = try JSONDecoder().decode([Recomend].self,from:data)
            
        } catch {
            print("💩 ERROR fetching places: \(error.localizedDescription)")
        }
    }
}

