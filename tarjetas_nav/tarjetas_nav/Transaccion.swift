//
//  Transaccion.swift
//  tarjetas_nav
//
//  Created by Zurisabdai Núñez Velázquez on 27/10/25.
//

import Foundation

struct Transaccion : Identifiable {
    
    let id: Int
    let uuid:UUID = UUID()
    let image: String
    let name: String
    let subtitle: String
    let date: String
    let income: String
    
}
