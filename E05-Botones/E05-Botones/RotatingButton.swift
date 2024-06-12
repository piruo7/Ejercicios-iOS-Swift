//
//  RotatingButton.swift
//  E05-Botones
//
//  Created by Christian Ramirez on 12/6/24.
//

import SwiftUI

struct RotatingButton: View {
    var body: some View {
        Button{
            print("Boton + pulsado")
        } label: {
            Image(systemName: "baseball.fill")
        }
        .buttonStyle(RotatingStyle())
    }
}

struct RotatingStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.green)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .rotationEffect(configuration.isPressed ? Angle(degrees: 45 + 90) : Angle(degrees: 0))
    }
}


#Preview {
    RotatingButton()
}
