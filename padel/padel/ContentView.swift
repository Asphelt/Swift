//
//  ContentView.swift
//  padel
//
//  Created by Zurisabdai Núñez Velázquez on 15/09/25.
//

import SwiftUI

struct ContentView: View {
    @State var contador1 = 0
    @State var contador2 = 0
    @State var resultado: String = ""
    var body: some View {
        ZStack() {
            Color.blue
            VStack{
                HStack{
                    Rectangle()
                        .frame(height: 150)
                }
                ZStack{
                    HStack{
                            Rectangle()
                                .frame(height: 150)
                            Rectangle()
                                .frame(height: 150)
                    }
                    Divider()
                        .frame(height: 2)
                        .background(Color.red)
                    
                }
                
                HStack{
                    Rectangle()
                        .frame(height: 150)
                }
                HStack{
                    VStack{
                        Image(systemName: "person").font(.system(size: 40))
    
                        Button(action:{
                            
                            if contador1 == 30 {
                                contador1 += 10
                            }else if contador1 == 40 && contador2 < 40{
                                resultado = "Ganador Jugador 1"

                            }else if contador1 == 40 && resultado == "Ventaja jugador 1" {
                                resultado = "Ganador Jugador 1"
                            } else if contador1 == 40 && contador2 == 40 && resultado == ""{
                                resultado = "Ventaja jugador 1"
                            } else if contador1 < 30 {
                                contador1 += 15
                            }

                        }){
                            Text("Aumenta")
                                .foregroundStyle(Color.white)
                        }.padding(10)
                            .frame(width: 100, height: 40)
                            .background(Color.red)
                            .cornerRadius(40)
                        Text("\(contador1)")
                    }
                    Spacer()
                    HStack{
                        Text(resultado)
                    }
                    VStack{
                        Image(systemName: "person").font(.system(size: 40))
                        
                        Button(action:{
                            if contador2 == 30 {
                                contador2 += 10
                            }else if contador2 == 40 && contador1 < 40{
                                resultado = "Ganador Jugador 2"

                            }else if contador2 == 40 && resultado == "Ventaja jugador 2" {
                                resultado = "Ganador Jugador 2"
                            } else if contador2 == 40 && contador1 == 40 && resultado == "" {
                                resultado = "Ventaja jugador 2"
                            } else if contador2 < 30{
                                contador2 += 15
                            }
                        }){
                            Text("Aumenta")
                                .foregroundStyle(Color.white)
                        }.padding(10)
                            .frame(width: 100, height: 40)
                            .background(Color.red)
                            .cornerRadius(40)
                        Text("\(contador2)")
                    }
                    
                }.padding()
                HStack{
                    Button(action:{
                    contador1 = 0
                    contador2 = 0
                    resultado = ""
                    }){
                        Text("Reiniciar")
                            .foregroundStyle(Color.white)
                    }.padding(10)
                        .frame(width: 100, height: 40)
                        .background(Color.red)
                        .cornerRadius(40)
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
