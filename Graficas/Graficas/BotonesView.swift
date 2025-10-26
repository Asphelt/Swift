//
//  BotonesView.swift
//  Graficas
//
//  Created by Zurisabdai Núñez Velázquez on 26/09/25.
//

import SwiftUI

struct BotonesView: View {
    var nombre: String
    var body: some View {
        VStack{
            Text(nombre)
        }.frame(maxWidth: .infinity)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(20)
    }
}

#Preview {
    BotonesView(nombre: "Boton 1")
}
