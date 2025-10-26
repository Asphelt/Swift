//
//  PantallaInicialView.swift
//  Graficas
//
//  Created by Zurisabdai Núñez Velázquez on 26/09/25.
//

import SwiftUI

struct PantallaInicialView: View {
    var body: some View {
            NavigationStack {
                VStack {
                    Text("Graficas")
                        .font(.title)
                        .fontDesign(.serif)
                        .foregroundStyle(.blue)

                    HStack {
                        NavigationLink("Barras") { BarrasView() }
                        NavigationLink("Dona") { DonaView() }
                        NavigationLink("Area") { AreaView() }
                    }
                    .buttonStyle(.bordered)
                }
                .padding()
            }
        }
}

#Preview {
    PantallaInicialView()
}
