//
//  Constant.swift
//  PlacesAI
//
//  Created by User50 on 02/05/24.
//

import Foundation

struct Constant {

static let promptVegan = """
  Give me inspiration for nearest "Vegan" food destination with the type of food in jakarta
  Provide the response as an array of JSON as
  [
  
      {
          "place": "name",
          "activity": "activity",
          "price": "5.000",
          "latitude":"latitude",
          "longitude":"longitude"
      }
  
  ]
  
  only. Remove any backticks.
  
  """
    static let promptMeat = """
      Give me inspiration for nearest "Meat" food destination with the type of food in jakarta
      Provide the response as an array of JSON as
      [
      
          {
              "place": "name",
              "activity": "activity",
              "price": "5.000"
              "latitude":"latitude",
              "longitude":"longitude"
          }
      
      ]
      
      only. Remove any backticks.
      
      """
    static let promptHealthy = """
      Give me inspiration for nearest "Healthy" food destination with the type of food in jakarta
      Provide the response as an array of JSON as
      [
      
          {
              "place": "name",
              "activity": "activity",
              "price": "5.000"
              "latitude":"latitude",
              "longitude":"longitude"
          }
      
      ]
      
      only. Remove any backticks.
      
      """
    static let promptCheat = """
      Give me inspiration for nearest Cheat" food destination with the type of food in jakarta
      Provide the response as an array of JSON as
      [
      
          {
              "place": "name",
              "activity": "activity",
              "price": "5.000"
              "latitude":"latitude",
              "longitude":"longitude"
          }
      
      ]
      
      only. Remove any backticks.
      
      """
    
    static let promptRecommendation = """
      Give me inspiration for nearest "Recommendation" food destination with the type of food in jakarta
      Provide the response as an array of JSON as
      [
      
          {
              "place": "name",
              "activity": "activity",
              "price": "5.000"
              "latitude":"latitude",
              "longitude":"longitude"
          }
      
      ]
      
      only. Remove any backticks.
      
      """
}
