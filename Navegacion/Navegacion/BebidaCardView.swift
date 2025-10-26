//
//  BebidaCardView.swift
//  Navegacion
//
//  Created by Zurisabdai Núñez Velázquez on 06/10/25.
//

import SwiftUI
import AVKit

struct BebidaCardView: View {
    var color: Color
    var image: String
    var producto: String
    var precio: String
    
    @State private var player: AVAudioPlayer?
    
    var body: some View {
        VStack {
            VStack {
                Spacer(minLength: 10)
                
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: 120, maxHeight: 120)
                    .padding(.bottom, 30)
            }
            .frame(width: 180, height: 200)
            .border(Color.black)
            .cornerRadius(20)
            .shadow(radius: 5)
            
            Text(producto)
                .padding(.trailing, 60)
                .font(.title2)
                .foregroundStyle(Color.indigo)
            
            Text(precio)
                .padding(.trailing, 130)
                .foregroundStyle(Color.indigo)
        }

        .onTapGesture {
            reproducirSonido(nombre: "click")
        }
    }
    
    func reproducirSonido(nombre: String) {
        guard let url = Bundle.main.url(forResource: "comida", withExtension: "mp3") else {
            print("No se encontró el archivo de sonido \(nombre).mp3")
            return
        }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            print("Error al reproducir el sonido: \(error.localizedDescription)")
        }
    }
}

#Preview {
    BebidaCardView(color: .blue, image: "1", producto: "Ice de cereza", precio: "$75.00")
}
