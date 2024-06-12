//
//  ContentView.swift
//  E04-ScrollViews
//
//  Created by Christian Ramirez on 10/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            HStack {
                VStack(alignment: .leading) {
                    Text("10 de Junio de 2024")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                    
                    Text("Tus cursos")
                        .font(.system(.largeTitle, design: .rounded))
                        .foregroundStyle(.primary)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                Spacer()
            }.padding([.top, .horizontal])
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    
                    Group {
                        
                        CardView(image: "swift5", title: "Curso de Swift 5", description: "Aprende el lenguaje de programación de Apple desde cero.", level: "Nivel Facil")
                        
                        CardView(image: "ios10", title: "Curso de iOS 10", description: "Crea tus primeras Apps con iOS 10 y Swift.", level: "Nivel Medio")
                        
                        CardView(image: "ios11", title: "Curso de iOS 11", description: "Crea tus primeras Apps con iOS 11 y Swift.", level: "Nivel Medio")
                        
                        CardView(image: "ios12", title: "Curso de iOS 12", description: "Crea tus primeras Apps con iOS 12 y Swift.", level: "Nivel Medio")
                        
                        CardView(image: "ios13", title: "Curso de iOS 13 y Swift UI", description: "Crea tus primeras Apps con iOS 13 y Swift UI.", level: "Nivel Facil")
                        
                    }.frame(width: 320, height: 400)
                }
                
                Spacer()
                
            }
        }
    }
}

struct ContentViewVertical: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("10 de Junio de 2024")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                        
                        Text("Tus cursos")
                            .font(.system(.largeTitle, design: .rounded))
                            .foregroundStyle(.primary)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                    Spacer()
                }.padding([.top, .horizontal])
                
                CardView(image: "swift5", title: "Curso de Swift 5", description: "Aprende el lenguaje de programación de Apple desde cero.", level: "Nivel Facil")
                
                CardView(image: "ios10", title: "Curso de iOS 10", description: "Crea tus primeras Apps con iOS 10 y Swift.", level: "Nivel Medio")
                
                CardView(image: "ios11", title: "Curso de iOS 11", description: "Crea tus primeras Apps con iOS 11 y Swift.", level: "Nivel Medio")
                
                CardView(image: "ios12", title: "Curso de iOS 12", description: "Crea tus primeras Apps con iOS 12 y Swift.", level: "Nivel Medio")
                
                CardView(image: "ios13", title: "Curso de iOS 13 y Swift UI", description: "Crea tus primeras Apps con iOS 13 y Swift UI.", level: "Nivel Facil")
                
            }
        }
    }
}

#Preview {
    ContentView()
}
