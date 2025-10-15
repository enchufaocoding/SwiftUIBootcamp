//
//  ContentView.swift
//  BottomSheetBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 3/10/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showSheet: Bool = false
    @State private var selectedRestaurant: Restaurant?
    @State private var selectedDetent: PresentationDetent = .medium
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(restaurants) { restaurant in
                    BasicImageRow(restaurant: restaurant)
                        .onTapGesture {
                            selectedRestaurant = restaurant
                        }
                }
            }
            .listStyle(.plain)
            
            .navigationTitle("Restaurants")
        }
        .sheet(item: $selectedRestaurant) { restaurant in
            RestaurantDetailView(restaurant: restaurant)
                .ignoresSafeArea()
                //.presentationDetents([.medium, .large])
               // .presentationDetents([.fraction(0.1), .height(200), .medium, .large])
               // .presentationDetents([.height(200), .medium, .large])
                .presentationDetents([.height(200), .medium, .large], selection: $selectedDetent)
                .presentationDragIndicator(.hidden)
            
        }
         
        /*
        VStack {
            Button("Show Sheet") {
                showSheet.toggle()
            }
            .buttonStyle(.borderedProminent)
            .sheet(isPresented: $showSheet) {
                Text("this is a expandable bottom sheet")
                    .presentationDetents([.large])
            }
            Spacer()
        }
        */
        
    }
}

#Preview {
    ContentView()
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

