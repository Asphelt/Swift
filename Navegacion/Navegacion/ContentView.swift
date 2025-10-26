//
//  ContentView.swift
//  Navegacion
//
//  Created by Zurisabdai Núñez Velázquez on 06/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            HStack{
                NavigationLink(destination: BebidasView()){
                    CategoriaView(color: Color.blue, image: "1")
                }
                NavigationLink(destination: BebidasView()){
                    CategoriaView(color: Color.orange, image: "2")
                }
            }
            HStack{
                NavigationLink(destination: BebidasView()){
                    CategoriaView(color: Color.green, image: "3")
                }
                NavigationLink(destination: BebidasView()){
                    CategoriaView(color: Color.purple, image: "4")
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
