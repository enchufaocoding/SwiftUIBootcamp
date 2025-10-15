//
//  ContentView.swift
//  UINavigationListBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 28/9/25.
//

import SwiftUI

struct ContentView: View {
    var restaurants = [ Restaurant(name: "Cafe Deadend", image: "cafedeadend"),
                   Restaurant(name: "Homei", image: "homei"),
                   Restaurant(name: "Teakha", image: "teakha"),
                   Restaurant(name: "Cafe Loisl", image: "cafeloisl"),
                   Restaurant(name: "Petite Oyster", image: "petiteoyster"),
                   Restaurant(name: "For Kee Restaurant", image: "forkeerestaurant"),
                   Restaurant(name: "Po's Atelier", image: "posatelier"),
                   Restaurant(name: "Bourke Street Bakery", image: "bourkestreetbakery"),
                   Restaurant(name: "Haigh's Chocolate", image: "haighschocolate"),
                   Restaurant(name: "Palomino Espresso", image: "palominoespresso"),
                   Restaurant(name: "Upstate", image: "upstate"),
                   Restaurant(name: "Traif", image: "traif"),
                   Restaurant(name: "Graham Avenue Meats And Deli", image: "grahamavenuemeats"),
                   Restaurant(name: "Waffle & Wolf", image: "wafflewolf"),
                   Restaurant(name: "Five Leaves", image: "fiveleaves"),
                   Restaurant(name: "Cafe Lore", image: "cafelore"),
                   Restaurant(name: "Confessional", image: "confessional"),
                   Restaurant(name: "Barrafina", image: "barrafina"),
                   Restaurant(name: "Donostia", image: "donostia"),
                   Restaurant(name: "Royal Oak", image: "royaloak"),
                   Restaurant(name: "CASK Pub and Kitchen", image: "caskpubkitchen")
    ]
    
    /*
     inicalizar mediante UIKit un componente y Customizarlo en caso de que no se pueda
     customizar mas mediante SwiftUI.
     */
    
    init() {
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.largeTitleTextAttributes = [
            .foregroundColor: UIColor.red,
            .font: UIFont(name: "ArialRoundedMTBold", size: 35)!]
        
        navBarAppearance.titleTextAttributes = [
            .foregroundColor: UIColor.red,
                .font: UIFont(name: "ArialRoundedMTBold", size: 20)!]
        
        // Cambiar imagen Boton BACK
     //   navBarAppearance.setBackIndicatorImage(UIImage(systemName: "arrow.turn.up.left"),
       //                                        transitionMaskImage: UIImage(systemName: "arrow.turn.up.left"))
       
        
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
        UINavigationBar.appearance().compactAppearance = navBarAppearance
        
    }
    
    var body: some View {
        
        NavigationStack {
            
            /*
            List {
                ForEach(restaurants) { restaurant in
                    BasicImageRow(restaurant: restaurant)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Restaurants")
            */
            List {
                ForEach(restaurants) { restaurant in
                    NavigationLink(destination: RestaurantDetailView(restaurant: restaurant))
                    {
                        BasicImageRow(restaurant: restaurant)
                    }
                }
            }
            .listStyle(.plain)
            
            // customize navigationBar
            .navigationTitle("Restaurantes")
            .navigationBarTitleDisplayMode(.automatic)
            
        }
        .tint(.green)
       
    }
}

#Preview {
    ContentView()
}

struct Restaurant: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

struct BasicImageRow: View {
    var restaurant: Restaurant
    
    var body: some View {
        HStack {
            Image(restaurant.image)
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(5)
            Text(restaurant.name)
        }
    }
}

struct FullImageRow: View {
    var restaurant: Restaurant
    
    var body: some View {
        ZStack {
            Image(restaurant.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .cornerRadius(10)
                .overlay(
                    Rectangle()
                        .foregroundStyle(.black)
                        .cornerRadius(10)
                        .opacity(0.2)
                )
            
            Text(restaurant.name)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundStyle(.white)
        }
    }
}
