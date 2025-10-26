//
//  ContentView.swift
//  Seleccion_dificultad
//
//  Created by Zurisabdai Núñez Velázquez on 10/09/25.
//

import SwiftUI
import AVKit

struct ContentView: View {
    @State private var mostrarAlerta = false
    @State private var mensaje = ""
    
    @State private var clickPlayer: AVAudioPlayer?
    
    func playClickSound() {
        if let url = Bundle.main.url(forResource: "risa", withExtension: "mp3") {
            do {
                clickPlayer = try AVAudioPlayer(contentsOf: url)
                clickPlayer?.play()
            } catch {
                print("Error al reproducir el sonido: \(error)")
            }
        }
    }

    var body: some View {
        ZStack {
            Image("diablo")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                VStack {
                    Button(action: {
                        mensaje = "Seleccionaste el camino de la mediocridad"
                        mostrarAlerta = true
                        playClickSound()
                    }) {
                        Image("1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 150)
                    }
                    
                    Button(action: {
                        mensaje = "Seleccionaste el camino de el dolor"
                        mostrarAlerta = true
                        playClickSound()
                    }) {
                        Image("2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 150)
                    }
                    
                    Button(action: {
                        mensaje = "Te gusta sufrir verdad ?"
                        mostrarAlerta = true
                        playClickSound()
                    }) {
                        Image("3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 150)
                    }
                    
                    Button(action: {
                        mensaje = "El diablo te tiene miedo, compra una vida"
                        mostrarAlerta = true
                        playClickSound()
                    }) {
                        Image("4")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 150)
                    }
                }
                .padding()
            }
        }
        .alert(isPresented: $mostrarAlerta) {
            Alert(title: Text("Alerta"), message: Text(mensaje), dismissButton: .default(Text("Aceptar destino")))
        }
    }
}

#Preview {
    ContentView()
}
