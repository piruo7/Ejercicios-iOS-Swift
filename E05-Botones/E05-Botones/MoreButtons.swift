//
//  MoreButtons.swift
//  E05-Botones
//
//  Created by Christian Ramirez on 12/6/24.
//

import SwiftUI

struct MoreButtons: View {
    var body: some View {
        
        
        VStack {
            Button{} label: {
                Text("Añadir al carrito")
            }
            
            
            Button{} label: {
                Text("Buscar mas cursos")
            }
                        
            
            Button{} label: {
                Text("Pagar")
            }
            
            Button("Eliminar", role: .destructive) {
                print("Eliminar pulsado")
            }
            
            Button("Cancelar", role: .cancel) {
                print("Cancelar pulsado")
            }

        }
        // .tint(.green)
        .buttonStyle(.bordered)
        .buttonBorderShape(.roundedRectangle(radius: 8))
        //buttonBorderShape(.capsule)
        .controlSize(.large)
        // Los modificadores se aplican a todos los buttons desde la VStack

    }
}

#Preview {
    MoreButtons()
}
