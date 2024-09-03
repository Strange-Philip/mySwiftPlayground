//
//  ContentView.swift
//  TutorialPrototype
//
//  Created by Philip Abakah on 26/08/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (spacing: 20) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint).padding(.bottom )
            Text("Hello 😊").font(.system(size: 36, weight: .medium, design: .monospaced))
                .padding()
                .background(Color.yellow, in : RoundedRectangle(cornerRadius: 12))
            Text("How are You today").font(.system(size: 28, weight: .medium ))
                .padding(10)
                .background(Color.teal, in : RoundedRectangle(cornerRadius: 12)).shadow(radius: 30)
            Button("Tap here", systemImage: "arrow.right") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
        }
        .padding(60)
    }
}

#Preview {
    ContentView()
}
