//
//  VistaSubmarino.swift
//  AvionSubmarino
//
//  Created by Zurisabdai Núñez Velázquez on 06/10/25.
//

import SwiftUI
import AVKit

struct VistaSubmarino: View {
    @Environment(\.dismiss) var dismiss
    @StateObject private var sonidos = SoundManager()
    
    @State private var posicionY: CGFloat = 150
    @State private var posicionX: CGFloat = 50
    @State private var opacidad: Double = 1.0
    @State private var sumergido = false
    @State private var burbujas: [Burbuja] = []
    @State private var movimientoAgua: CGFloat = 0
    
    var body: some View {
        ZStack {
            // Agua superficie
            Rectangle()
                .fill(Color(red: 0.0, green: 0.5, blue: 0.8).opacity(0.7))
                .frame(height: UIScreen.main.bounds.height * 0.3)
                .frame(maxHeight: .infinity, alignment: .top)
                .offset(y: movimientoAgua)
                .onAppear {
                    withAnimation(.easeInOut(duration: 2.0).repeatForever(autoreverses: true)) {
                        movimientoAgua = 5
                    }
                }
            
            // Agua profunda
            Rectangle()
                .fill(Color(red: 0.0, green: 0.2, blue: 0.4))
                .frame(height: UIScreen.main.bounds.height * 0.7)
                .frame(maxHeight: .infinity, alignment: .bottom)
            
            // Submarino
            Image(systemName: "ferry")
                .resizable()
                .frame(width: 80, height: 80)
                .foregroundColor(.yellow)
                .opacity(opacidad)
                .position(x: posicionX, y: posicionY)
                .onTapGesture {
                    sonidos.reproducir(nombre: "click")
                }
            
            // Burbujas
            ForEach(burbujas) { burbuja in
                Circle()
                    .fill(Color.white.opacity(0.6))
                    .frame(width: 20, height: 20)
                    .position(x: burbuja.x, y: burbuja.y)
            }
            
            VStack(spacing: 15) {
                BotonAccion(titulo: "Emerger", color: .green) {
                    sonidos.reproducir(nombre: "Estrellarse")
                    emerger()
                }
                
                BotonAccion(titulo: "Sumergir", color: .blue) {
                    sonidos.reproducir(nombre: "Sumerger")
                    sumergir()
                }
                
                BotonAccion(titulo: "Desplazar", color: .purple) {
                    sonidos.reproducir(nombre: "comida")
                    mover()
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

    func emerger() {
        guard sumergido else { return }
        sonidos.reproducir(nombre: "emerge")
        agregarBurbujas()
        
        withAnimation(.easeOut(duration: 2.5)) {
            posicionY = 150
            opacidad = 1.0
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            sumergido = false
        }
    }
    
    func sumergir() {
        guard !sumergido else { return }
        sonidos.reproducir(nombre: "submerge")
        agregarBurbujas()
        
        withAnimation(.easeIn(duration: 2.5)) {
            posicionY = 500
            opacidad = 0.6
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            sumergido = true
        }
    }
    
    func mover() {
        sonidos.reproducir(nombre: "submarine_move")
        
        withAnimation(.linear(duration: 4.0)) {
            posicionX = UIScreen.main.bounds.width - 80
        }
    }
    
    func agregarBurbujas() {
        for i in 0..<5 {
            let burbuja = Burbuja(
                x: posicionX + CGFloat.random(in: -30...30),
                y: posicionY
            )
            burbujas.append(burbuja)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(i) * 0.2) {
                if let index = burbujas.firstIndex(where: { $0.id == burbuja.id }) {
                    withAnimation(.easeOut(duration: 1.5)) {
                        burbujas[index].y -= 100
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                        burbujas.removeAll { $0.id == burbuja.id }
                    }
                }
            }
        }
    }
}

struct Burbuja: Identifiable {
    let id = UUID()
    var x: CGFloat
    var y: CGFloat
}
