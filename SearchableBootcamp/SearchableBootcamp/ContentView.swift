//
//  ContentView.swift
//  SearchableBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 14/10/25.
//

import SwiftUI

struct ContentView: View {
    @State var articles = sampleArticles
    @State private var searchText = ""
    
    var body: some View {
        
        NavigationSplitView {
            List {
                ForEach(articles) { article in
                    ArticleRow(article: article)
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationTitle("AppCoda")
        } detail: {
            Text("Article details")
        }
        .searchable(text: $searchText)
        .searchSuggestions {
            Text("SwiftUI").searchCompletion("SwiftUI")
            Text("iOS 15").searchCompletion("iOS 15")
        }
        
        .onChange(of: searchText) { oldValue, newValue in
            if !newValue.isEmpty {
                articles = sampleArticles.filter { $0.title.contains(newValue) }
            } else {
                articles = sampleArticles
            }
        }
        
        
        /*
        NavigationSplitView {
            List {
                ForEach(articles) { article in
                    ArticleRow(article: article)
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationTitle("AppCoda")
        } detail: {
            Text("Article details")
                // .searchable(text: $searchText)
                .searchable(text: $searchText, placement: .navigationBarDrawer)
        }
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
        */
        
        /*
        NavigationStack {
            List {
                ForEach(articles) { article in
                    ArticleRow(article: article)
                }

                .listRowSeparator(.hidden)

            }
            .listStyle(.plain)
            
            .navigationTitle("AppCoda")
            
        }
       // .searchable(text: $searchText)
       // .searchable(text: $searchText, prompt: "Search articles...")
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
        */
    }
}

#Preview {
    ContentView()
}

struct ArticleRow: View {
    let article: Article
    
    var body: some View {
        HStack(alignment: .top) {
            AsyncImage(url: URL(string: article.imageURL)) { image in
                image
                    .resizable()
                    .scaledToFill()
                
            } placeholder: {
                Color.purple.opacity(0.1)
            }
            .frame(width: 100, height: 100)
            .cornerRadius(20)
            
            Text(article.title)
                .font(.system(.headline, design: .rounded))
            
        }
    }
}
