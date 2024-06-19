//
//  ArticleDetail.swift
//  E10-ProyectoArticulos
//
//  Created by Christian Ramirez on 18/6/24.
//

import SwiftUI

struct ArticleDetail: View {
    
    @Environment(\.dismiss) var dismiss
    @Environment(\.openURL) var openURL

    var article: Article
    
    var body: some View {
        
        ScrollView{
            VStack(alignment: .leading){
                Image(article.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            Group{
                Text(article.title)
                    .font(.system(.title, design: .rounded))
                    .bold()
                    .lineLimit(4)
                
                Text("Redactado por \(article.author)".uppercased())
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                                
                Button("Ver artículo") {
                    openURL(URL(string: "\(article.url)")!)
                }

            
            }
            .padding(.bottom, 2)
            .padding(.horizontal, 16)
            .multilineTextAlignment(.center)
            
            Group{
                Text("\(article.excerpt)")
                    .bold()
                
                Text(article.content)
            }
            .font(.body)
            .padding()
            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            
            
        }
        .navigationBarTitleDisplayMode(.inline)
        .ignoresSafeArea(.all, edges: .top)
        .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .topBarLeading) {
                Button{
                    dismiss()
                } label: {
                    Image(systemName: "arrow.left.circle.fill")
                        .font(.system(size: 27))
                }.tint(.white)
            }
        }
        
    }
}

#Preview {
    NavigationStack {
        ArticleDetail(article: articles[0])
            .navigationTitle("")
    }
}
