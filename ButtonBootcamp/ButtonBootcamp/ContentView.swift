//
//  ContentView.swift
//  ButtonBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 18/9/25.
//

import SwiftUI

struct ContentView: View {
    @State private var rotation: Double = 0
    @State private var isRotated: Bool = false
    
    var body: some View {
       /*
        Button {
            print("Hello World tapped!")
        } label: {
        */
        
            /*
            Text("Hello World")
                .background(.purple) // 1. Change the background color to purple
                .foregroundStyle(.white) // 2. Set the foreground/font color to white
                .font(.title) // 3. Change the font type
                .padding() // 4. Add the paddings with the primary color (i.e.white)
             */
            
            /*
            Text("Hello World")
                .padding() // 1. Add the paddings
                .background(.purple) // 2. Change the background color to purple including the padding
                .foregroundStyle(.white) // 3. Set the foreground/font color to white
                .font(.title) // 4. Change the font type
            */
            
            /*
            Text("Hello World")
                .foregroundStyle(.purple)
                .font(.title)
                .padding()
                .border(.purple, width: 5)
             */
            
            /*
            Text("Hello World")
                .fontWeight(.bold)
                .font(.title)
                .padding()
                .background(.purple)
                .foregroundStyle(.white)
                .padding(10)
                .border(.purple, width: 5)
            */
            
            /*
            Text("Hello World")
                .fontWeight(.bold)
                .font(.title)
                .padding()
                .background(.purple)
                .cornerRadius(40)
                .foregroundStyle(.white)
                .padding(10)
                .overlay {
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(.purple, lineWidth: 5)
                }
            */
            
            /*
            Button {
                print("Delete button tapped!")
            } label: {
                Image(systemName: "trash")
                    .font(.largeTitle)
                    .foregroundStyle(.red)
            }
            */
            
            /*
            Button {
                print("Delete button tapped")
            } label: {
                HStack {
                    Image(systemName: "trash")
                        .font(.title)
                    Text("Delete")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .padding()
                .foregroundStyle(.white)
                .background(.red)
                .cornerRadius(40)
            }
            */
            
            /*
            Button {
                print("Delete button tapped")
            } label: {
                Label(
                    title: {
                        Text("Delete")
                            .fontWeight(.semibold)
                            .font(.title)
                    },
                    icon: {
                        Image(systemName: "trash")
                            .font(.title)
                    }
                )
                .padding()
                .foregroundStyle(.white)
               // .background(.red)
              //  .background(LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint:
                .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(40)
            }
             */
            /*
            Button {
                print("Share button tapped!")
            } label: {
                Label(
                    title: {
                        Text("Share")
                            .fontWeight(.semibold)
                            .font(.title)
                    },
                    icon: {
                        Image(systemName: "square.and.arrow.up")
                            .font(.title)
                    }
                )
            }
            .buttonStyle(GradientBackgroundStyle())
            
            Button {
                print("Edit button tapped")
            } label: {
                Label(
                    title: {
                        Text("Edit")
                            .fontWeight(.semibold)
                            .font(.title)
                    },
                    icon: {
                        Image(systemName: "square.and.pencil")
                            .font(.title)
                    }
                )
            }
            .buttonStyle(GradientBackgroundStyle())
            
            Button {
                print("Delete button tapped")
            } label: {
                Label(
                    title: {
                        Text("Delete")
                            .fontWeight(.semibold)
                            .font(.title)
                    },
                    icon: {
                        Image(systemName: "trash")
                            .font(.title)
                    }
                )
            }
            .buttonStyle(GradientBackgroundStyle())
             */
        
        /*
        Button {
           // print("Button Tapped")
                
        } label: {
            Circle()
                .frame(width: 150, height: 150)
                .foregroundStyle(.purple)
                .overlay(
                    Image(systemName: "plus")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width: 78, height: 78)

                )
                .rotationEffect(Angle(degrees: rotation))
                .onTapGesture {
                    withAnimation {
                        rotation = isRotated ? 0 : 45
                    }
                    
                }

        }
        */
        
        /*
        ZStack {
            Color.red
            Button {
            } label: {
                Text("Buy me a coffee")
            }
            .tint(.purple)
            // .buttonStyle(.borderedProminent)
            .buttonStyle(.glass)
            .buttonBorderShape(.roundedRectangle(radius: 5))
            .controlSize(.large)
        }
        
        */
        
        Button("Buy me a coffee", role: .destructive) {
            print("DELETE")
        }
        .buttonStyle(.borderedProminent)
        .controlSize(.large)
        
        
        
        }
    }

#Preview {
    ContentView()
}

struct GradientBackgroundStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundStyle(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(40)
                .padding(.horizontal, 20)
                .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}
