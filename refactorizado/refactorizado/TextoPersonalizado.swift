//
//  TextoPersonalizado.swift
//  refactorizado
//
//  Created by win603 on 27/08/25.
//

import SwiftUI

struct TextoPersonalizado: View {
    let nombre: String
    //Mandar parametros de colores
    let color: Color
    var paddingvalue: CGFloat = 30
    let color_letra: Color
    let ancho: CGFloat
    var body: some View {
        Text(nombre)
            .padding(paddingvalue)
            .frame(width: ancho)
            .font(.largeTitle)
            .fontWeight(.bold)
            .background(color)
            .foregroundColor(color_letra)
  
    }
    
}

#Preview {
    TextoPersonalizado(nombre: "Zuri", color: .green, color_letra: .white,ancho: 200)
}
