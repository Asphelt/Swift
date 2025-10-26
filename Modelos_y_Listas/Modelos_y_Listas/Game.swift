//
//  Game.swift
//  Modelos_y_Listas
//
//  Created by Zurisabdai Núñez Velázquez on 15/10/25.
//

import Foundation


struct Game : Identifiable {
    
    let id: Int
    let uuid:UUID = UUID()
    let image: String
    let name: String
    let console: String
    let price: Float
    
}

