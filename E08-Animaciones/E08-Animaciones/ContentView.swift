//
//  ContentView.swift
//  E08-Animaciones
//
//  Created by Christian Ramirez on 13/6/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var circleColorChanged = false
    @State private var heartColorChanged = false
    @State private var heartSizeChanged = false
    
    var body: some View {
        ZStack {

            Circle()
                .frame(width: 250, height: 250)
                .foregroundStyle(circleColorChanged ? Color(.systemGray6) : .teal)
            
            Image(systemName: "heart.fill")
                .font(.system(size: 80))
                .foregroundStyle(heartColorChanged ? .teal : Color(.systemGray6))
                .scaleEffect(heartSizeChanged ? 1.5 : 0.75)
            
        }
        // Animaciones implicitas
        //.animation(.default, value: circleColorChanged)
        //.animation(.spring(.bouncy, blendDuration: 1.0), value: heartSizeChanged)
        .onTapGesture {
            // Animaciones explicitas
            withAnimation(.spring(.bouncy, blendDuration: 1.0)) {
                circleColorChanged.toggle()
                heartSizeChanged.toggle()
            }
            // Cambio sin animacion
            heartColorChanged.toggle()
        }
    }
}

#Preview {
    ContentView()
}
