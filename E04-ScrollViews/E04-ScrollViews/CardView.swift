//
//  CardView.swift
//  E04-ScrollViews
//
//  Created by Christian Ramirez on 10/6/24.
//

import SwiftUI

struct CardView: View {
    
    var image: String
    var title: String
    var description: String
    var level: String

    var body: some View {
            
        VStack() {
            Image(image).resizable().aspectRatio(contentMode: .fit)
            
            HStack {
                VStack(alignment: .leading) {
                    Text(title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.largeTitle)
                        .foregroundStyle(.secondary)
                        // .minimumScaleFactor(0.8)
                        .lineLimit(1)
                    
                    Text(description)
                        .font(.title2)
                        .foregroundStyle(.primary)
                        .lineLimit(2)
                    
                    Text(level)
                        .font(.headline)
                        .foregroundStyle(.secondary)
                }
                Spacer()
            }
            .padding()
        }
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .overlay(RoundedRectangle(cornerRadius: 16.0).stroke(Color(.sRGB, red: 145/255, green:  145/255, blue:  145/255, opacity: 0.6), lineWidth: 1))
        .padding([.top, .horizontal])
        
    }
}

#Preview {
    CardView(image: "swift5", title: "Curso de Swift 5", description: "Aprende el lenguaje de programación de Apple desde cero.", level: "Nivel Facil")
}
