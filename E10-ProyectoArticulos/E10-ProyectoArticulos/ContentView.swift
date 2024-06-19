//
//  ContentView.swift
//  E10-ProyectoArticulos
//
//  Created by Christian Ramirez on 18/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            List(articles) { article in
                
                VStack {
                    ArticleRow(article: article)
                    
                    NavigationLink(destination: ArticleDetail(article: article)) {
                        EmptyView() // Junto con el opacity ayuda a ocultar el disclouse indicator >
                    }
                    .opacity(0.0)
                    .listRowSeparator(.hidden)
                }
            }
            .listStyle(.plain)
            .navigationTitle("El Blog de Frogames")
        }
    }
}

#Preview {
    ContentView()
}

struct ArticleRow: View {
    
    var article: Article
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Image(article.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(5)
            
            Text(article.title)
                .font(.system(.title3, design: .rounded))
                .fontWeight(.black)
                .lineLimit(3)
                .padding(.bottom, 0)
            
            Text("Creado por \(article.author)".uppercased())
                .font(.subheadline)
                .foregroundColor(.secondary)
                .padding(.bottom, 0)
            
            HStack(spacing: 3) {
                ForEach(1...(article.rating), id: \.self) { _ in
                    Image(systemName: "star.fill")
                        .font(.caption)
                        .foregroundColor(.yellow)
                }
            }
            
            Text(article.excerpt)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .lineLimit(5)
            
        }
    }
}
