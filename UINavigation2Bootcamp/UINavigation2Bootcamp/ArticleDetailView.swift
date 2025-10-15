//
//  ArticleDetailView.swift
//  UINavigation2Bootcamp
//
//  Created by Jose Alberto Rosario Castillo on 28/9/25.
//

import SwiftUI

struct ArticleDetailView: View {
    
    @Environment(\.dismiss) var dismiss
                  
    var article: Article
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(article.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Group {
                    Text(article.title)
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.black)
                        .lineLimit(3)
                    Text("By \(article.author)"
                        .uppercased())
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                }
                .padding(.bottom, 0)
                .padding(.horizontal)
                Text(article.content)
                    .font(.body)
                    .padding()
                    .lineLimit(1000)
                    .multilineTextAlignment(.leading)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .ignoresSafeArea(.all, edges: .top)
        
        .navigationBarBackButtonHidden(true)
        
      //  .toolbarRole(.editor)
        .toolbarBackground(.clear, for: .navigationBar)
        .toolbarRole(.editor)
        
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    dismiss()
                }) {
                    Image(systemName: "chevron.left")
                        .font(.headline)
                        .foregroundStyle(Color(.red))
                }
                .buttonStyle(.plain)
                .tint(.white)
            }
        }
        
    }
}

#Preview {
    
    
    NavigationStack {
        ArticleDetailView(article: articles[0])
        .navigationBarTitle("Article")
    }
   // .navigationTitle("Article")
    
    
}
