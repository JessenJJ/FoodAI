//
//  RecomRow.swift
//  FoodAI
//
//  Created by User50 on 03/05/24.
//

import SwiftUI

struct RecomRow: View {
    var recom: Recomend
    var latitude: String = "-6.221555537318924"
    var longitude: String = "106.86769521068311"
    
    var body: some View {
        VStack (alignment:.leading,spacing: 16){
            Text(recom.activity)
                .font(.system(.title,design:.rounded))
                .padding()
            
            HStack {
                Group {
                    Image(systemName: "pin")
                    Text(recom.place)
                    
                    
                }
                .font(.subheadline)
                
                Spacer()
                
                HStack {
                    Circle()
                        .fill(.green)
                        .frame(width: 30,height: 30)
                    Text("Rp. \(recom.price)")
                        .font(.subheadline)
                    
                }
                .padding([.vertical,.horizontal],8)
                .background(Color(.systemGroupedBackground))
                .clipShape(Capsule())
            }
            .padding()
        }
        .background(Color.blue.opacity(0.4))
        .onTapGesture {
            openGoogleMaps(latitude: recom.latitude, longitude: recom.longitude)
        }
        
        
    }
    func openGoogleMaps(latitude: String, longitude: String) {
        let latitudeEncoded = latitude.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        let longitudeEncoded = longitude.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        
        if let url = URL(string: "comgooglemaps://?q=\(latitudeEncoded),\(longitudeEncoded)") {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            } else {
                print("Google Maps app is not installed.")
                // Open Google Maps website in Safari
                if let webURL = URL(string: "https://maps.google.com/?q=\(latitudeEncoded),\(longitudeEncoded)") {
                    UIApplication.shared.open(webURL, options: [:], completionHandler: nil)
                }
            }
        } else {
            print("Invalid URL.")
        }
    }

}

#Preview {
    RecomRow(recom: Recomend.dummyDataRecomend[0])
}
