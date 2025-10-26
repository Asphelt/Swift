//
//  GamesViewModel.swift
//  Modelos_y_Listas
//
//  Created by Zurisabdai Núñez Velázquez on 15/10/25.
//

import Foundation


struct GamesViewModel{
    
    func dummyData() -> [Game] {
        
        var games: [Game] = [
            Game(id: 1, image: "Mario", name: "Super Cholo Bros", console: "Nintendo", price: 1200.00),
            
            Game(id: 2, image: "Doom", name: "Doom 64", console: "Nintendo", price: 1600.00),
            
            Game(id: 3, image: "Doom2016", name: "Doom (2016)", console: "Playstation 4", price: 2500.00),
            
            Game(id: 4, image: "halo", name: "Halo", console: "Xbox", price: 130.00),
            
            Game(id: 5, image: "Persona", name: "Persona 5 Royale", console: "PS4", price: 130.00),
            
            Game(id: 6, image: "tactica", name: "Persona 5 Striker", console: "PS4", price: 130.00)
        ]

        for x in 6 ... 500 {
                    games.append(Game(id: x, image: "sackboy", name: "Juego #\(x)", console: "PS4", price: (130.00 + Float(x) )))
                }

        return games
    }
}
