//
//  CuisineView.swift
//  yippeeee
//
//  Created by Vijayaganapathy Pavithraa on 28/4/24.
//

import SwiftUI

struct DetailsView: View {
    
    var restaurant : Restaurant

    
    var body: some View {
        VStack {
            
            List {
                Image(uiImage: restaurant.food)
                    .resizable()
                    .scaledToFit()
                Section(header: Text("Rating")){
                    HStack{
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.yellow)
                        Text(restaurant.rating)
                    }
                }
                Section(header: Text("Address")){
                    Text(restaurant.address)
                }
                Section(header: Text("Opening Hours")){
                    Text(restaurant.openingHours)
            
                }
                Section(header: Text("Menu Link")){
                    Link("Click here", destination: URL(string:restaurant.menuLink)!)
                }
                Section(header: Text("Phone Number")){
                    Text(restaurant.phoneNumber)
                }
                Section(header: Text("Price Range")){
                    Text(restaurant.priceRange)
                }
                
            }
            .navigationTitle(restaurant.name)
        }
    }
}

#Preview {
    DetailsView(restaurant : Restaurant(category: .drinks, name: "Starbucks", logo: UIImage(imageLiteralResourceName: "starbuckLogo"), food: UIImage(imageLiteralResourceName: "starbucks"), rating: "4.1", address: "1 Fusionopolis Link, #01-03 Nexus @one-north, Singapore 138542", openingHours: "Weekdays: 7am - 9pm\nWeekends: 8:30am - 5pm", menuLink: "https://www.starbucks.com.sg/menu", phoneNumber: "+65 6910 1215", priceRange: "$5-$15"))
}
