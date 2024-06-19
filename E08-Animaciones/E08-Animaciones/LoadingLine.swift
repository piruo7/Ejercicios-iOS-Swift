//
//  LoadingLine.swift
//  E08-Animaciones
//
//  Created by Christian Ramirez on 14/6/24.
//

import SwiftUI

struct LoadingLine: View {
    
    @State private var isLoading = false
    
    var body: some View {
        
        ZStack{
            
            Text("Cargando")
                .font(.system(.largeTitle, design: .rounded))
                .bold()
                .foregroundStyle(.teal)
                .offset(x: 0, y: -30)
            
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color(.systemGray4), lineWidth: 5)
                .frame(width: 300, height: 5)
            
            
            RoundedRectangle(cornerRadius: 5)
                .stroke(.teal, lineWidth: 5)
                .frame(width: 30, height: 5)
                .offset(x: isLoading ? 135 : -135)
                .animation(.linear(duration: 2).repeatForever(autoreverses: true), value: isLoading)
        }
        .onAppear(){
            isLoading = true
        }
        
    }
}

#Preview {
    LoadingLine()
}
