//
//  ContentView.swift
//  tarjetas_nav
//
//  Created by Zurisabdai Núñez Velázquez on 13/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationStack{
                NavigationLink(destination: OperacionesCardView()){
                    TarjetaView(nombre: "BBVA", numero: "123456789", cliente: "Zurisabdai")
                }
                NavigationLink(destination: OperacionesCardView()){
                    TarjetaView(nombre: "BBVA", numero: "123456789", cliente: "Zurisabdai")
                }
                NavigationLink(destination: OperacionesCardView()){
                    TarjetaView(nombre: "BBVA", numero: "123456789", cliente: "Zurisabdai")
                }
                NavigationLink(destination: OperacionesCardView()){
                    TarjetaView(nombre: "BBVA", numero: "123456789", cliente: "Zurisabdai")
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
    }
}

#Preview {
    ContentView()
}
