//
//  RestaurantDetailView.swift
//  BottomSheetBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 3/10/25.
//


import SwiftUI

struct RestaurantDetailView: View {
    let restaurant: Restaurant
    
    var body: some View {
        VStack {
            Spacer()
            HandleBar()
            ScrollView(.vertical) {
                TitleBar()
                HeaderView(restaurant: restaurant)
                DetailInfoView(icon: "map", info: restaurant.location)
                    .padding(.top)
                DetailInfoView(icon: "phone", info: restaurant.phone)
                DetailInfoView(icon: nil, info: restaurant.description)
                    .padding(.top)
            }
            .background(.white)
            .cornerRadius(10, antialiased: false)
        }
    }
}

struct HandleBar: View {
    var body: some View {
        Rectangle()
            .frame(width: 50, height: 5)
            .foregroundStyle(Color(.systemGray5))
            .cornerRadius(10)
    }
}

struct TitleBar: View {
    var body: some View {
        HStack {
            Text("Restaurant Details")
                .foregroundStyle(.primary)
            Spacer()
        }
        .padding()
    }
}

struct HeaderView: View {
    let restaurant: Restaurant
    
    var body: some View {
        Image(restaurant.image)
            .resizable()
            .scaledToFill()
            .frame(height: 300)
           // .cornerRadius(10)
            .clipped()
            .overlay(
                HStack {
                    VStack(alignment: .leading) {
                        Spacer()
                        Text(restaurant.name)
                            .foregroundStyle(.white)
                            .font(.system(.largeTitle, design: .rounded))
                            .bold(true)
                        
                        Text(restaurant.type)
                            .font(.system(.headline, design: .rounded))
                            .padding(5)
                            .foregroundStyle(.white)
                            .background(Color.red)
                            .cornerRadius(5)
                    }
                    Spacer()
                }
                    .padding()
            )
    }
}

struct DetailInfoView: View {
    let icon: String?
    let info: String
    var body: some View {
        HStack {
            if icon != nil {
                Image(systemName: icon!)
                    .padding(.trailing, 10)
            }
            Text(info)
                .font(.system(.body, design: .rounded))
            Spacer()
        }.padding(.horizontal)
    }
}

#Preview {
  //  RestaurantDetailView(restaurant: Restaurant(name: "Cafe Deadend", type: "Coffee & Tea Shop", location: "G/F, 72 Po Hing Fong, Sheung Wan, Hong Kong", phone: "232-923423", description: "Searching for great breakfast eateries and coffee? This place is for you. We open at 6:30 every morning, and close at 9 PM. We offer espresso and espresso based drink, such as capuccino, cafe latte, piccolo and many more. Come over and enjoy a great meal.\n\nA little gem hidden at the corner of the street is nothing but fantastic! This place is warm and cozy. We open at 7 every morning except Sunday, and close at 9 PM. We offer a variety of coffee drinks and specialties including lattes, cappuccinos, teas, and more. We serve breakfast, lunch, and dinner in an airy open setting. Come over, have a coffee and enjoy a chit-chat with our baristas.\n\nA great cafe in Austrian style. We offer espresso and espresso based drink, such as capuccino, cafe latte, piccolo and many more. We also serve breakfast and light lunch. Come over to enjoy the elegant ambience and quality coffee.", image: "cafedeadend", isVisited: false))
    
    RestaurantDetailView(restaurant: restaurants[0])
    
    //HandleBar()
    // TitleBar()
    // HeaderView(restaurant: Restaurant.init(name: "Restaurant Name", type: "Type", location: "Location", phone: "Phone", description: "Description", image: "image", isVisited: false))
}
