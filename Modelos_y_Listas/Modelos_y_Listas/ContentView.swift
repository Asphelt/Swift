//
//  ContentView.swift
//  Modelos_y_Listas
//
//  Created by Zurisabdai Núñez Velázquez on 15/10/25.
//

import SwiftUI

struct ContentView: View {
    @State var gamesViewModel = GamesViewModel().dummyData()
    var body: some View {
        VStack {
            ScrollView() {
                ForEach(gamesViewModel , id: \.self.uuid) { game in
                    
                    LazyVStack(){
                        CardView(image: game.image, name: game.name, console: game.console, price: String(game.price))
                            .padding(.trailing)
                            .background(Color.cyan)
                            .cornerRadius(15)
                            .padding(4)
                            .listRowInsets(EdgeInsets())
                    }
                    
                }.onDelete { (indexSet) in
                    self.gamesViewModel.remove(atOffsets: indexSet)
                }
            }.listStyle(PlainListStyle())
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
