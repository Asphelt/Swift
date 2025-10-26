//
//  ContentView.swift
//  refactorizado
//
//  Created by win603 on 27/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TextoPersonalizado(nombre:"Zuri", color: .blue,paddingvalue: 50, color_letra: .black,ancho: 100)
            TextoPersonalizado(nombre:"Sabdai",color: .black,paddingvalue: 8, color_letra: .yellow,ancho: 10)
            TextoPersonalizado(nombre:"Núñez", color: .yellow,paddingvalue: 20, color_letra: .red,ancho: 200)
            TextoPersonalizado(nombre:"Velázquez", color: .cyan,paddingvalue: 19, color_letra: .white,ancho: 60)
        }
        
    }
}

#Preview {
    ContentView()
}
