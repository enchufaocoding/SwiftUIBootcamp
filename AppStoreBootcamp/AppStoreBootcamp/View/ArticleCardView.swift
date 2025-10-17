//
//  ArticleCardView.swift
//  AppStoreBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 17/10/25.
//

import SwiftUI

struct ArticleCardView: View {
    @Environment(\.dismiss) var dismiss
    
    let category: String
    let headline: String
    let subHeadline: String
    let image: UIImage
    var content: String = ""
    
    @Binding var isShowContent: Bool
    
    var body: some View {
        
        GeometryReader { geometry in
            ZStack(alignment: .topLeading) {
                ScrollView {
                    VStack(alignment: .leading) {
                        Image(uiImage: self.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width, height: self.isShowContent ? geometry.size.height * 0.7 : min(self.image.size.height/3, 500))
                            .border(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), width: self.isShowContent ? 0 : 1)
                            .cornerRadius(15)
                            .overlay(
                                ArticleExcerptView(category: self.category, headline: self.headline, subHeadline: self.subHeadline, isShowContent: self.$isShowContent)
                                    .cornerRadius(self.isShowContent ? 0 : 15)
                            )
                        
                        // Content
                        if self.isShowContent {
                            Text(self.content)
                                .foregroundStyle(Color(.darkGray))
                                .font(.system(.body, design: .rounded))
                                .padding(.horizontal)
                                .padding(.bottom, 50)
                                .transition(.move(edge: .bottom))
                        }
                    }
                }
                .shadow(color: Color(.sRGB, red: 64/255, green: 64/255, blue: 64/255, opacity: 0.3), radius: self.isShowContent ? 0 : 15)
                
                // Close button
                if self.isShowContent {
                    HStack {
                        Spacer()
                        
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "xmark.circle.fill")
                                .font(.system(size: 26))
                                .foregroundStyle(Color.white)
                                .opacity(0.7)
                        }
                    }
                    .padding(.top, 50)
                    .padding(.trailing)
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview("Card View (no content)") {
    ArticleCardView(category: sampleArticles[0].category, headline: sampleArticles[0].headline, subHeadline: sampleArticles[0].subHeadline, image: sampleArticles[0].image, content: sampleArticles[0].content, isShowContent: .constant(false))
}

#Preview("Card View (with content)") {
    ArticleCardView(category: sampleArticles[1].category, headline: sampleArticles[1].headline, subHeadline: sampleArticles[1].subHeadline, image: sampleArticles[1].image, content: sampleArticles[1].content, isShowContent: .constant(true))
}

#Preview("Article Excerpt View with subheadline", traits: .fixedLayout(width: 380, height: 500)) {
    ArticleExcerptView(category: sampleArticles[0].category, headline: sampleArticles[0].headline, subHeadline: sampleArticles[0].subHeadline, isShowContent: .constant(false))
}

#Preview("Article Excerpt View", traits: .fixedLayout(width: 380, height: 500)) {
    ArticleExcerptView(category: sampleArticles[0].category, headline: sampleArticles[0].headline, subHeadline: sampleArticles[0].subHeadline, isShowContent: .constant(true))
}

struct ArticleExcerptView: View {
    
    let category: String
    let headline: String
    let subHeadline: String
    
    @Binding var isShowContent: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            
            Rectangle()
                .frame(minHeight: 100, maxHeight: 150)
                .overlay(
                    HStack {
                        VStack(alignment: .leading) {
                            Text(self.category.uppercased())
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .foregroundStyle(Color.secondary)
                          
                            Text(self.headline)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundStyle(Color.primary)
                                .minimumScaleFactor(0.1)
                                .lineLimit(2)
                                .padding(.bottom, 5)
                            
                            if !self.isShowContent {
                                Text(self.subHeadline)
                                    .font(.subheadline)
                                    .foregroundStyle(Color.secondary)
                                    .minimumScaleFactor(0.1)
                                    .lineLimit(3)
                                
                            }
                        }
                        .padding()
                        
                        Spacer()
                    }
            )
        }
        .foregroundStyle(.white)
        
    }
}

