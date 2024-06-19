//
//  ContentView.swift
//  E07-Figuras
//
//  Created by Christian Ramirez on 13/6/24.
//

import SwiftUI

struct ContentView: View {
    
    var start = CGPoint(x: 300, y: 200)
    var control = CGPoint(x: 200, y: 100)
    var end = CGPoint(x: 100, y: 200)
    
    var drawTriangle = true
    
    var body: some View {
        
        ZStack {
            Path(){ path in
                path.move(to: CGPoint(x: 50, y: 50))
                path.addLine(to: CGPoint(x: 350, y: 50))
                path.addLine(to: CGPoint(x: 350, y: 220))
                
                path.addLine(to: start)
                
                path.addQuadCurve(to: end, control: control)
                
                if (drawTriangle) {
                    path.addLine(to: start)
                    path.addLine(to: control)
                    path.addLine(to: end)
                }
                
                path.addLine(to: CGPoint(x: 100, y: 200))
                
                path.addLine(to: CGPoint(x: 50, y: 220))
                // path.addLine(to: CGPoint(x: 50, y: 50))
                path.closeSubpath()
            }
            .fill(.green)
            
            Path(){ path in
                path.move(to: CGPoint(x: 50, y: 50))
                path.addLine(to: CGPoint(x: 350, y: 50))
                path.addLine(to: CGPoint(x: 350, y: 220))
                
                path.addLine(to: start)
                
                path.addQuadCurve(to: end, control: control)
                
                if (drawTriangle) {
                    path.addLine(to: start)
                    path.addLine(to: control)
                    path.addLine(to: end)
                }
                path.addLine(to: CGPoint(x: 100, y: 200))
                
                path.addLine(to: CGPoint(x: 50, y: 220))
                // path.addLine(to: CGPoint(x: 50, y: 50))
                path.closeSubpath()
            }
            .stroke(.cyan, lineWidth: 6)

        }
        
    }
}

#Preview {
    ContentView()
}
