//
//  ContentView.swift
//  UIModalBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 29/9/25.
//

import SwiftUI

struct ContentView: View {
    
   //  @State var showDetails: Bool = false
    @State var selectedArticle: Article?
    
    var body: some View {
        NavigationStack {
            List(articles) { article in
                ArticleRow(article: article)
                    .onTapGesture {
               //         showDetails = true
                       selectedArticle = article
                    }
                
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            
            .fullScreenCover(item: $selectedArticle) { article in
                ArticleRow(article: article)
            }
            
           /*
            .sheet(isPresented: $showDetails) {
                if let selectedArticle = self.selectedArticle {
                    ArticleDetailView(article: selectedArticle)
                }
            }
            */
            
            /*
            .sheet(item: $selectedArticle) { article in
                ArticleDetailView(article: article)
            }
            */
            
            .navigationTitle("Your Reading")
        }
    }
}

#Preview {
    ContentView()
}

