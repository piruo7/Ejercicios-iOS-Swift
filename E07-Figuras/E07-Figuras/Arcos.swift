//
//  Arcos.swift
//  E07-Figuras
//
//  Created by Christian Ramirez on 13/6/24.
//

import SwiftUI

struct Arcos: View {
    var body: some View {
        ZStack {
            Path(){ path in
                path.move(to: CGPoint(x: 220, y: 220))
                path.addArc(center: .init(x: 220, y: 220), radius: 150, startAngle: .degrees(0), endAngle: .degrees(200), clockwise: true)
            }
            .fill(.cyan)
            
            Path(){ path in
                path.move(to: CGPoint(x: 220, y: 220))
                path.addArc(center: .init(x: 220, y: 220), radius: 150, startAngle: .degrees(200), endAngle: .degrees(120), clockwise: true)
            }
            .fill(.green)
            
            Path(){ path in
                path.move(to: CGPoint(x: 220, y: 220))
                path.addArc(center: .init(x: 220, y: 220), radius: 150, startAngle: .degrees(120), endAngle: .degrees(90), clockwise: true)
            }
            .fill(.red)
            .offset(x: -8, y: 30)
            
            ZStack {
                Path(){ path in
                    path.move(to: CGPoint(x: 220, y: 220))
                    path.addArc(center: .init(x: 220, y: 220), radius: 150, startAngle: .degrees(90), endAngle: .degrees(0), clockwise: true)
                    path.closeSubpath()
                }
                .fill(.purple)
                .overlay(
                    Text("25%")
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .offset(x: 75, y: -140)
                )
                
                Path(){ path in
                    path.move(to: CGPoint(x: 220, y: 220))
                    path.addArc(center: .init(x: 220, y: 220), radius: 150, startAngle: .degrees(90), endAngle: .degrees(0), clockwise: true)
                    path.closeSubpath()
                }
                .stroke(.black, lineWidth: 4)

            }
        }
    }
}

#Preview {
    Arcos()
}
