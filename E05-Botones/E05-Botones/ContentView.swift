//
//  ContentView.swift
//  E05-Botones
//
//  Created by Christian Ramirez on 11/6/24.
//

// El orden de los modificadores altera el producto

import SwiftUI

struct ContentView: View {
    var body: some View {

        // Boton con texto
//        Button{
//            print("Se pulsa el boton")
//        } label: {
//            Text("Hola mundo")
//                .font(.title)
//                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
//                .padding()
//                .background(Color.green)
//                .cornerRadius(40)
//                .foregroundColor(.white)
//                .padding(10)
//                //.border(Color.green, width: 4)
//                .overlay(RoundedRectangle(cornerRadius: 40.0).stroke(.green, lineWidth: 6))
//        }
        
        // Boton con imagen
        VStack {
            Button{
                print("Se pulsa el boton editar")
            } label: {
                Label (
                    title: {
                        Text("Editar")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.title)
                    }, icon: {
                        Image(systemName: "square.and.pencil")
                            .font(.largeTitle)
                    }
                )
            }
            .buttonStyle(GradientButtonStyle())

            
            Button{
                print("Se pulsa el boton compartir")
            } label: {
                Label (
                    title: {
                        Text("Compartir")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.title)
                    }, icon: {
                        Image(systemName: "square.and.arrow.up")
                            .font(.largeTitle)
                    }
                )
            }
            .buttonStyle(GradientButtonStyle())

            
            Button{
                print("Se pulsa el boton eliminar")
            } label: {
                Label (
                    title: {
                        Text("Eliminar")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.title)
                    }, icon: {
                        Image(systemName: "trash")
                            .font(.largeTitle)
                    }
                )
            }
            .buttonStyle(GradientButtonStyle())


        }
        
    }
        
}


struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
            .foregroundColor(.white)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color("Evenning Sunshine Red"), Color("Evenning Sunshine Blue")]), startPoint: .leading, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
            .clipShape(RoundedRectangle(cornerRadius: 40))
            .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 15, y: 10)
            .padding(.horizontal, 10)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)

    }
}

#Preview {
    ContentView()
}
