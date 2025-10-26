//
//  SoundManager.swift
//  AvionSubmarino
//
//  Created by Zurisabdai Núñez Velázquez on 06/10/25.
//

import SwiftUI
import AVFoundation

class SoundManager: ObservableObject {
    private var reproductor: AVAudioPlayer?
    
    func reproducir(nombre: String) {
        guard let url = Bundle.main.url(forResource: nombre, withExtension: "mp3") else {
            print("No se encontró el sonido: \(nombre)")
            return
        }
        
        do {
            reproductor = try AVAudioPlayer(contentsOf: url)
            reproductor?.prepareToPlay()
            reproductor?.play()
        } catch {
            print("Error al reproducir: \(error.localizedDescription)")
        }
    }
    
    func detener() {
        reproductor?.stop()
    }
}
