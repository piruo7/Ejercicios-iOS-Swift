//
//  DonutChart.swift
//  E07-Figuras
//
//  Created by Christian Ramirez on 13/6/24.
//

import SwiftUI

struct DonutChart: View {
    
    var lineWidth = 90.0
    
    var body: some View {
        
        ZStack{
            Circle()
                .trim(from: 0.0, to: 0.3)
                .stroke(Color(Color(.systemCyan)), lineWidth: lineWidth)

            Circle()
                .trim(from: 0.3, to: 0.55)
                .stroke(Color(Color(.systemPurple)), lineWidth: lineWidth)

            Circle()
                .trim(from: 0.55, to: 0.75)
                .stroke(Color(Color(.systemMint)), lineWidth: lineWidth)

            Circle()
                .trim(from: 0.75, to: 1.0)
                .stroke(Color(Color(.systemPink)), lineWidth: lineWidth)
        }
        .frame(width: 280, height: 280)
        
    }
}

#Preview {
    DonutChart()
}
