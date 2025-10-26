//
//  BotonAccion.swift
//  AvionSubmarino
//
//  Created by Zurisabdai Núñez Velázquez on 06/10/25.
//

import SwiftUI

struct BotonAccion: View {
    let titulo: String
    let color: Color
    let accion: () -> Void
    
    var body: some View {
        Button(action: accion) {
            Text(titulo)
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.white)
                .frame(width: 140, height: 50)
                .background(color)
                .cornerRadius(10)
        }
    }
}
