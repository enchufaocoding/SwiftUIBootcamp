//
//  ContentView.swift
//  AppStoreBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 17/10/25.
//

import SwiftUI

struct ContentView: View {
    
    @Namespace() var namespace
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 40) {
                    
                    TopBarView()
                        .padding(.horizontal, 20)
                    
                    ForEach(sampleArticles.indices, id: \.self) { index in
                        
                        NavigationLink {
                            ArticleCardView(category: sampleArticles[index].category, headline: sampleArticles[index].headline, subHeadline: sampleArticles[index].subHeadline, image: sampleArticles[index].image, content: sampleArticles[index].content, isShowContent: .constant(true))
                                .navigationTransition(.zoom(sourceID: index, in: namespace))
                                .toolbarVisibility(.hidden, for: .navigationBar)
                            
                        } label: {
                            
                            ArticleCardView(category: sampleArticles[index].category, headline: sampleArticles[index].headline, subHeadline: sampleArticles[index].subHeadline, image: sampleArticles[index].image, content: sampleArticles[index].content, isShowContent: .constant(false))
                                .padding(.horizontal, 20)
                                .frame(height: min(sampleArticles[index].image.size.height/3, 500))
                                .padding(.bottom, 15)
                                .matchedTransitionSource(id: index, in: namespace)
                            
                        }
                        
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

struct TopBarView : View {
   
    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            VStack(alignment: .leading) {
                Text(getCurrentDate().uppercased())
                    .font(.caption)
                    .foregroundStyle(Color.secondary)
                Text("Today")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
            }
            
            Spacer()
            
            AvatarView(image: "profile", width: 40, height: 40)
            
        }
    }
    
    func getCurrentDate(with format: String = "EEEE, MMM d") -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: Date())
    }
}

struct AvatarView: View {
    let image: String
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        Image(image)
            .resizable()
            .frame(width: width, height: height)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 1))
    }
}
