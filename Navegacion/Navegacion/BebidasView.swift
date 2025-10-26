//
//  BebidasView.swift
//  Navegacion
//
//  Created by Zurisabdai Núñez Velázquez on 06/10/25.
//

import SwiftUI
import AVKit
struct BebidasView: View {
    var body: some View {
        VStack {
            HStack{
                BebidaCardView(color: .blue, image: "1",producto: "Ice de cereza", precio: "$75.00")
                BebidaCardView(color: .blue, image: "1",producto: "Ice de cereza", precio: "$75.00")
            }
        }
    }
}

#Preview {
    BebidasView()
}
