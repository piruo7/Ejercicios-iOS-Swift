//
//  RectanguloRedondeado.swift
//  E07-Figuras
//
//  Created by Christian Ramirez on 13/6/24.
//

import SwiftUI

struct RectanguloRedondeado: View {
    var body: some View {

        VStack {
            Button(action: {
                print("Prueba")
            }) {
                Text("Prueba")
                    .font(.system(.title, design: .rounded))
                    .bold()
                    .foregroundStyle(.white)
                    .frame(width: 300, height: 80)
                    .background(ReactangleOvalShape().fill(Color.teal))
            }
            
            Circle()
                .fill(.red)
                .frame(width: 300, height: 300)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                        .foregroundColor(.white)
                )
        }
    }
}

struct ReactangleOvalShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addQuadCurve(to: CGPoint(x: rect.size.width, y: 0), control: CGPoint(x: rect.size.width/2, y: -0.15*rect.size.height))
        
        path.addRect(CGRect(x: 0, y: 0, width: rect.size.width, height: rect.size.height))
        
        return path
    }
}

#Preview {
    RectanguloRedondeado()
}
