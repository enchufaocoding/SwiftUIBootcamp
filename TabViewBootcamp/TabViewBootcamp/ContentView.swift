//
//  ContentView.swift
//  TabViewBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 14/10/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Int = 0
    
    var body: some View {
        TabView(selection: $selection) {
            NavigationStack {
                List(1...10, id: \.self) { index in
                    NavigationLink(
                        destination: Text("Item #\(index) Details"),
                        label: {
                            Text("Item #\(index)")
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                        })
                }
                .navigationTitle("TabView Demo")
                
            }
                .listStyle(.plain)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
                Text("Bookmark Tab")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "bookmark.circle.fill")
                        Text("Bookmark")
                    }
                    .tag(1)
                Text("Video Tab")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "video.circle.fill")
                        Text("Video")
                    }
                    .tag(2)
                Text("Profile Tab")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "person.crop.circle")
                        Text("Profile")
                    }
                    .tag(3)
            }
            .tint(.red)
            .navigationTitle("TabView Demo")
        }
        
        
        /*
        NavigationStack {
            TabView(selection: $selection) {
                List(1...10, id: \.self) { index in
                    NavigationLink(
                        destination: Text("Item #\(index) Details"),
                        label: {
                            Text("Item #\(index)")
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                        })
                }
                .listStyle(.plain)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
                Text("Bookmark Tab")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "bookmark.circle.fill")
                        Text("Bookmark")
                    }
                    .tag(1)
                Text("Video Tab")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "video.circle.fill")
                        Text("Video")
                    }
                    .tag(2)
                Text("Profile Tab")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "person.crop.circle")
                        Text("Profile")
                    }
                    .tag(3)
            }
            .tint(.red)
            .navigationTitle("TabView Demo")
        }
        */
        
        /*
        ZStack (alignment: .topTrailing) {
            TabView (selection: $selection) {
                Text("Home")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                    .tag(0)
                
                Text("Bookmark Tab")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "bookmark.circle.fill")
                        Text("Bookmark")
                    }
                    .tag(1)
                
                Text("Video Tab")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "video.circle.fill")
                        Text("Video")
                    }
                    .tag(2)
                
                Text("Profile Tab")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "person.crop.circle")
                        Text("Profile")
                    }
                    .tag(3)
                
            }
            .tint(Color.red)
            
            Button {
                selection = (selection + 1) % 4
            } label: {
                Text("Next")
                    .font(.system(.headline, design: .rounded))
                    .padding()
                    .foregroundStyle(Color.white)
                    .background(Color.red)
                    .cornerRadius(10)
                    .padding()
            }
        }
*/

 //   }
}

#Preview {
    ContentView()
}
