//
//  VistaAvion.swift
//  AvionSubmarino
//
//  Created by Zurisabdai Núñez Velázquez on 06/10/25.
//

import SwiftUI
import AVKit

struct VistaAvion: View {
    @Environment(\.dismiss) var dismiss
    @StateObject private var sonidos = SoundManager()
    
    @State private var posicionY: CGFloat = 500
    @State private var posicionX: CGFloat = 50
    @State private var rotacion: Double = 0
    @State private var opacidad: Double = 1.0
    @State private var volando = false
    @State private var mostrarExplosion = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(red: 0.53, green: 0.81, blue: 0.92))
                .frame(height: UIScreen.main.bounds.height * 0.7)
                .frame(maxHeight: .infinity, alignment: .top)
            
            Rectangle()
                .fill(Color(red: 0.4, green: 0.8, blue: 0.4))
                .frame(height: UIScreen.main.bounds.height * 0.3)
                .frame(maxHeight: .infinity, alignment: .bottom)
            
            Image(systemName: "airplane")
                .resizable()
                .frame(width: 80, height: 80)
                .foregroundColor(.blue)
                .rotationEffect(.degrees(rotacion))
                .opacity(opacidad)
                .position(x: posicionX, y: posicionY)
                .onTapGesture {
                    sonidos.reproducir(nombre: "click")
                }
            
            if mostrarExplosion {
                Circle()
                    .fill(Color.orange)
                    .frame(width: 100, height: 100)
                    .position(x: posicionX, y: posicionY)
                    .scaleEffect(3)
                    .opacity(0)
            }
            
            VStack(spacing: 15) {
                BotonAccion(titulo: "Despegar", color: .green) {
                    sonidos.reproducir(nombre: "Despegar")
                    despegar()
                }
                
                BotonAccion(titulo: "Volar", color: .blue) {
                    sonidos.reproducir(nombre: "Volar")
                    volar()
                }
                
                BotonAccion(titulo: "Aterrizar", color: .orange) {
                    sonidos.reproducir(nombre: "Aterrizar")
                    aterrizar()
                }
                
                BotonAccion(titulo: "Estrellarse", color: .red) {
                    sonidos.reproducir(nombre: "Estrellarse")
                    estrellar()
                }
                
                BotonAccion(titulo: "Volver", color: .gray) {
                    sonidos.reproducir(nombre: "Volver")
                    dismiss()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)
            .padding(.trailing, 20)
        }
        .ignoresSafeArea()
    }

    func despegar() {
        guard !volando else { return }
        volando = true
        
        withAnimation(.easeInOut(duration: 3.0)) {
            posicionY = 200
            rotacion = -15
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            withAnimation(.easeInOut(duration: 0.5)) {
                rotacion = 0
            }
        }
    }
    
    func volar() {
        guard volando else { return }
        withAnimation(.linear(duration: 4.0)) {
            posicionX = UIScreen.main.bounds.width - 80
        }
    }
    
    func aterrizar() {
        guard volando else { return }
        withAnimation(.easeIn(duration: 2.5)) {
            posicionY = 500
            rotacion = 10
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            volando = false
            withAnimation(.easeInOut(duration: 0.3)) {
                rotacion = 0
            }
        }
    }
    
    func estrellar() {
        guard volando else { return }
        withAnimation(.easeIn(duration: 1.5)) {
            posicionY = 600
            rotacion = 90
            opacidad = 0.3
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            volando = false
            mostrarExplosion = true
            
            withAnimation(.easeOut(duration: 0.5)) {
                mostrarExplosion = false
            }
        }
    }
}

#Preview {
    VistaAvion()
}
