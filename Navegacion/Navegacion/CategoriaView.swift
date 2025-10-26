//
//  CategoriaView.swift
//  Navegacion
//
//  Created by Zurisabdai Núñez Velázquez on 06/10/25.
//

import SwiftUI

struct CategoriaView: View {
    var color: Color
    var image: String
    
    var body: some View {
        VStack {
            Spacer(minLength: 10)
            
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: 120, maxHeight: 120)
                .padding(.bottom, 30)
        
        }
        .frame(width: 180, height: 200)
        .background(color)
        .cornerRadius(20)
        .shadow(radius: 5)
    }
}

#Preview {
    CategoriaView(color: .blue, image: "1")
}

