//
//  ContentView.swift
//  AvionSubmarino
//
//  Created by Zurisabdai Núñez Velázquez on 06/10/25.
//

import SwiftUI

struct ContentView: View {
    @State private var mostrarAvion = false
    @State private var mostrarSubmarino = false
    
    var body: some View {
        ZStack {
            Color(red: 0.95, green: 0.95, blue: 0.98)
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                Text("911 Y 911 acuatico")
                    .font(.system(size: 36, weight: .bold))
                    .padding(.top, 80)
                
                Spacer()
                
                VStack(spacing: 25) {
                    Button(action: {
                        mostrarAvion = true
                    }) {
                        HStack {
                            Text("Avión")
                                .font(.system(size: 24, weight: .semibold))
                        }
                        .frame(width: 250, height: 60)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                    }
                    
                    Button(action: {
                        mostrarSubmarino = true
                    }) {
                        HStack {
                            Text("Submarino")
                                .font(.system(size: 24, weight: .semibold))
                        }
                        .frame(width: 250, height: 60)
                        .background(Color.teal)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                    }
                }
                
                Spacer()
            }
        }
        .fullScreenCover(isPresented: $mostrarAvion) {
            VistaAvion()
        }
        .fullScreenCover(isPresented: $mostrarSubmarino) {
            VistaSubmarino()
        }
    }
}
