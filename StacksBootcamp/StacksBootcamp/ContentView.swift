//
//  ContentView.swift
//  StacksBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 18/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
     /*   VStack {
            HStack {
                HeaderView()
                Spacer()
            }.padding(20)
            HStack (spacing: 15){
                PricingView(title: "Basic",
                            price: "$9",
                            textColor: Color.white,
                            bgColor: Color.purple,
                            iconPlan: nil
                )
                ZStack {
                    PricingView(title: "Pro",
                                price: "$19",
                                textColor: .black,
                                bgColor: Color(red:240/255, green: 240/255, blue: 240/255),
                                iconPlan: nil
                    )
                    Text("Best for designer")
                        .font(.system(.caption, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(5)
                        .background(Color(red: 255/255, green: 183/255, blue: 37/255))
                        .offset(x: 0, y: 87)
                }
            }
            .padding(.horizontal)
            ZStack {
                PricingView(title: "Team",
                            price: "$299",
                            textColor: .white,
                            bgColor: Color(red: 62/255, green: 63/255, blue: 70/255),
                            iconPlan: "wand.and.rays"
                )
                .padding()
                Text("Perfect for teams with 20 members")
                    .font(.system(.caption, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Color(red: 255/255, green: 183/255, blue: 37/255))
                    .offset(x: 0, y: 110)
            }
            Spacer()
        }
        */
        
        ZStack {
            PricingView(title: "Basic",
                        price: "$9",
                        textColor: .white,
                        bgColor: .purple,
                        iconPlan: "burst.fill")
                .padding()
                .offset(x: 0, y: 180)
                
            PricingView(title: "Pro",
                        price: "$19",
                        textColor: .white,
                        bgColor: Color(red: 255/255, green: 183/255, blue: 37/255),
                        iconPlan: "dial")
                .padding()
                .scaleEffect(0.95)
            
            PricingView(title: "Team",
                        price: "$299",
                        textColor: .white,
                        bgColor: Color(red: 62/255, green: 63/255, blue: 70/255),
                        iconPlan: "wand.and.rays")
                .padding()
                .scaleEffect(0.9)
                .offset(x: 0, y: -180)
        }
    }
}

#Preview {
    ContentView()
}
