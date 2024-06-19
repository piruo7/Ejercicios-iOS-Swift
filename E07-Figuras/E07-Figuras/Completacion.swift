//
//  Completacion.swift
//  E07-Figuras
//
//  Created by Christian Ramirez on 13/6/24.
//

import SwiftUI

struct Progreso: View {
    
    private var colorGradient = LinearGradient(gradient: Gradient(colors: [Color(red: 180/255, green: 150/255, blue: 210/255), Color(red: 100/255, green:110/255, blue:180/255 )]), startPoint: .trailing, endPoint: .leading)
    
    var body: some View {
        
        ZStack{
            
            Circle()
                .stroke(Color(.systemGray5), lineWidth: 10)
                .frame(width: 250, height: 250)
            
            
            Circle()
                .trim(from: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, to: 0.75)
                .stroke(colorGradient, lineWidth: 15)
                .frame(width: 250, height: 250)
                .rotationEffect(Angle(degrees: 90))
                .overlay(
                    VStack {
                        Text("75%")
                            .font(.system(size: 60, weight: .black, design: .rounded))
                        .foregroundStyle(Color(red: 100/255, green:110/255, blue:180/255 ))
                        
                        Text("Completado")
                            .font(.system(.title3, design: .rounded))
                            .bold()
                            .foregroundStyle(Color(red: 100/255, green:110/255, blue:180/255 ))
                    }
                )
        }
    
        
    }
}

#Preview {
    Progreso()
}
