//
//  ContentView.swift
//  E03-Stacks
//
//  Created by Christian Ramirez on 6/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TitleView()
            HStack(spacing: 20) {
                // Rana de bronce
                PriceView(title: "Rana de bronce", price: "29£", description: "Acceso mensual", textColor: .white, backgroundColor: Color(red: 205/255, green: 127/255, blue: 50/255))

                // Rana de plata
                ZStack {
                    PriceView(title: "Rana de plata", price: "145£", description: "Acceso anual", textColor: .white, backgroundColor: Color(red: 192/255, green: 192/255, blue: 192/255))
                                        
                    OfferTextView(message: "Ahorras 1 mes", colorBox: .cyan, position: -80)

                }
            }
            .padding(.horizontal)
            
            // Rana de oro
            ZStack {
                PriceView(title: "Rana de oro", price: "259£", description: "Acceso anual", textColor: .white, backgroundColor: Color(red: 238/255, green: 184/255, blue: 16/255), icon: "dumbbell.fill")
                    .padding(.horizontal)
                
                OfferTextView(message: "Ahorras 3 meses", colorBox: .cyan, position: 85)

            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}

struct TitleView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text("Elige")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.bold)
                Text("Tu Suscripción")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.bold)
            }
            Spacer()
        }
        .padding()
    }
}

struct PriceView: View {
    
    var title: String
    var price: String
    var description: String
    var textColor: Color
    var backgroundColor: Color
    var icon: String?
    
    var body: some View {
        VStack {
            
            if let icon = icon {
                Image(systemName: icon)
                    .font(.largeTitle)
                    .foregroundColor(textColor)
            }
            
            Text(title)
                .font(.system(.title,
                              design: .rounded))
                .fontWeight(.heavy)
                .foregroundColor(textColor)
            
            Text(price)
                .font(.system(size: 45, weight: .heavy, design: .rounded))
                .foregroundColor(textColor)
            Text(description)
                .font(.headline)
                .foregroundColor(textColor)
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: 100)
        .padding()
        .background(backgroundColor)
        .cornerRadius(15)
    }
}

struct OfferTextView: View {
    
    var message: String
    var colorBox: Color
    var position: CGFloat
    
    var body: some View {
        Text(message)
            .font(.system(.caption, design: .rounded))
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .foregroundStyle(.white)
            .padding(4)
            .background(colorBox)
            .offset(x:0, y: position)
    }
}
