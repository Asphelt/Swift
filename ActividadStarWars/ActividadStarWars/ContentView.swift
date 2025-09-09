//
//  ContentView.swift
//  ActividadStarWars
//
//  Created by WIN603 on 15/08/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        VStack(){
            Text("StarWars")
            ZStack(alignment: .center){
                Text("War! The Republic is crumbling under the attacks of the ruthless Sith Lord, Count Dooku. There are heroes on both sides, but evil is everywhere. In a decisive move, the diabolical droid leader, General Grievous, has stormed the Republic capital and kidnapped Chancellor Palpatine, leader of the Galactic Senate. As the Separatist droid army tries to flee with their valuable hostage, two Jedi Knights launch a desperate mission to free the captive Chancellor." )
            }
            .rotation3DEffect(.degrees(45), axis: (x: 1, y: 0, z: 0))
        }
        .font(.custom("starjedi", size: 18))
        .frame(maxWidth:.infinity,maxHeight: .infinity)
        .background(Color.black)
        .foregroundColor(.yellow)
    }
}

#Preview {
    ContentView()
    
}
