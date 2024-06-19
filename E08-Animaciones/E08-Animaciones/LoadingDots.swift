//
//  LoadingDots.swift
//  E08-Animaciones
//
//  Created by Christian Ramirez on 14/6/24.
//

import SwiftUI

struct LoadingDots: View {
    
    @State private var isLoading = false

    var body: some View {
        ZStack {
            Text("Cargando")
                .font(.system(.title, design: .rounded))
                .bold()
                .foregroundStyle(.teal)
                .offset(x: 0, y: -30)

            HStack{
               ForEach(0...5, id: \.self){ idx in
                  Circle()
                     .frame(width: 20, height: 20)
                     .foregroundStyle(.teal)
                     .scaleEffect(isLoading ? 0 : 1)
                     .animation(.linear(duration: 0.7).repeatForever()
                        .delay(Double(idx)/6), value: isLoading)
                }
            }.onAppear(){
               isLoading = true
            }
        }
    }
}

#Preview {
    LoadingDots()
}
