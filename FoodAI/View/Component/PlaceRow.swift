//
//  PlaceView.swift
//  PlacesAI
//
//  Created by User50 on 24/04/24.
//

import SwiftUI

struct PlaceRow: View {
    var place: Place
    var latitude: String = "-6.221555537318924"
    var longitude: String = "106.86769521068311"
    
    var body: some View {
        VStack (alignment:.leading,spacing: 16){
            Text(place.activity)
                .font(.system(.title,design:.rounded))
            
            HStack {
                Group {
                    Image(systemName: "pin")
                    Text(place.place)
                    
                    
                }
                .font(.subheadline)
                
                Spacer()
                
                HStack {
                    Circle()
                        .fill(.green)
                        .frame(width: 30,height: 30)
                    Text("Rp. \(place.price)")
                        .font(.subheadline)
                    
                }
                .padding([.vertical,.horizontal],8)
                .background(Color(.systemGroupedBackground))
                .clipShape(Capsule())
            }
        }
        .onTapGesture {
            openGoogleMaps(latitude: place.latitude, longitude: place.longitude)
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
    PlaceRow(place: Place.dummyData[0])
}
