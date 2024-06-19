//
//  E08_AnimacionesApp.swift
//  E08-Animaciones
//
//  Created by Christian Ramirez on 13/6/24.
//

import SwiftUI

@main
struct E08_AnimacionesApp: App {
    var body: some Scene {
        WindowGroup {
            
            ScrollView(showsIndicators: false) {

                // ContentView()
                LoadingCircle()
                Spacer(minLength: 100)
                LoadingLine()
                Spacer(minLength: 100)
                LoadingDots()
                Spacer(minLength: 100)
                ProgressView()
                Spacer(minLength: 100)
                MorphingView()
                Spacer(minLength: 100)
                Transiciones()
                Spacer(minLength: 100)
                PurchaseButton()

            }.contentMargins(10)
            
        }
    }
}
