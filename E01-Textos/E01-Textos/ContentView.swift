//
//  ContentView.swift
//  E01-Textos
//
//  Created by Christian Ramirez on 14/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("**Esto es un texto en negrita** *Esto es un texto en cursiva* Podemos agregar un [link a una web](https://google.com)")
            //.fontWeight(.thin)
            //.font(.system(.title, design: .rounded))
            .font(.custom("Poppins", size: 20))
            .foregroundColor(.primary)
            .multilineTextAlignment(.center)
            .lineLimit(nil)
            .truncationMode(.middle)
            .lineSpacing(12)
            .padding(50)
            //.rotationEffect(.degrees(30), anchor: UnitPoint(x: 0.25, y: 0.25))
            .rotation3DEffect(
                .degrees(45),axis: (x: 1, y: 0, z: 0))
            .shadow(color: .gray, radius: 2, x: 0, y: 30)
    }
}

#Preview {
    ContentView()
}
