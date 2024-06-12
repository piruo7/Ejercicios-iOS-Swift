//
//  ContentView.swift
//  E06-Estados
//
//  Created by Christian Ramirez on 12/6/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPlaying = false
    
    var body: some View {

        Button{
            isPlaying.toggle()
        } label: {
            Image(systemName: isPlaying ? "stop.circle" : "play.circle")
                .font(.system(size: 80))
                .foregroundColor(isPlaying ? .red : .cyan)
        }
        
    }
}

#Preview {
    ContentView()
}
