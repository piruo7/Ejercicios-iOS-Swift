//
//  LoadingCircle.swift
//  E08-Animaciones
//
//  Created by Christian Ramirez on 14/6/24.
//

import SwiftUI

struct LoadingCircle: View {
    
    @State private var isLoading = false
    
    var body: some View {
        
        ZStack {
            Text("Cargando")
                .font(.system(.body, design: .rounded))
                .bold()
            
            Circle()
                .stroke(Color(.systemGray6), lineWidth: 8)
                .frame(width: 150, height: 150)
            
            Circle()
                .trim(from: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, to: 0.75)
                .stroke(.teal, lineWidth: 8)
                .frame(width: 150, height: 150)
                .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
                .animation(.linear(duration: 2).repeatForever(autoreverses: false), value: isLoading)
                .onAppear(){
                    isLoading = true
            }
        }
    }
}

#Preview {
    LoadingCircle()
}
