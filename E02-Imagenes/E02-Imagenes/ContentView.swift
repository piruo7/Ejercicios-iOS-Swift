//
//  ContentView.swift
//  E02-Imagenes
//
//  Created by Christian Ramirez on 20/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Ejemplo con SF Symbols
        Image(systemName: "externaldrive.fill.badge.wifi", variableValue: 0.5)
            .symbolRenderingMode(.palette)
            .font(.system(size: 80))
            .foregroundStyle(.cyan, .yellow)
            //.foregroundColor(.cyan)
            .shadow(color: .gray, radius: 15, x: 0, y: 10)
        /* Image("mp")
            .resizable()
            .ignoresSafeArea(.container, edges: .all)
            //.scaledToFit()
            //.scaledToFill()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            //.clipped()
            .clipShape(Circle())
            //.opacity(0.5)
            .overlay(
                // Simbolo
                /* Image(systemName: "hand.thumbsup.fill")
                    .font(.system(size: 48))
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .opacity(0.5) */
         
                // Texto
                /* Text("Machu Picchu")
                    .fontWeight(.bold)
                    .font(.system(.largeTitle, design: .rounded))
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color.blue)
                    .opacity(0.7)
                    .cornerRadius(15),
                alignment: .bottom */
                
                /* Rectangle()
                    .foregroundStyle(.gray)
                    .opacity(0.4) */
         
                Color.black
                    .opacity(0.5)
                    .overlay(
                        Text("Machu Picchu")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .frame(width: 200)
                    )
            ) */
        
    }
}

#Preview {
    ContentView()
}
