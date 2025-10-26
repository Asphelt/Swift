//
//  ContentView.swift
//  Peliculas_imagenes
//
//  Created by win603 on 29/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack {
                    VStack {
                        Image("kimetsu")
                            .cornerRadius(20)
                            .overlay(
                                Text("Preventa")
                                    .font(.system(size: 20,weight: .bold,design: .rounded))
                                    .padding(.horizontal)
                                    .frame(width: 150, height: 40)
                                    .background(Color.mint)
                                    .cornerRadius(20)
                                    .offset(x: 99, y: 236)
                            )
                        HStack{
                            Text("TBC")
                                .background(Color.gray)
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                                .font(.system(size: 15, weight: .bold, design: .rounded))
                               
                                .padding(5)
                                .foregroundStyle(.white)
                            Text("155 min")
                                .font(.system(size: 15, weight: .bold, design: .rounded))
                                .padding()
                        }.frame(width:350, alignment: .leading)
                        HStack{
                            Text("Demon Slayer: Kimetsu no Yaib Castillo infinito")
                                .font(.system(size: 30, weight: .bold, design: .rounded))
                                .lineLimit(1)
                                .truncationMode(.middle)
                                
                             
                        }.frame(width:350, alignment: .leading)
                        
                        HStack{
                            Text("Ver detalles").font(.system(size: 20)
                            ).underline(true, color: .blue)
                                .foregroundStyle(.blue)
                            Image(systemName: "info.circle")
                                .foregroundStyle(.blue)
                             
                        }.frame(width:350, alignment: .leading)
                        }
                    VStack {
                        Image("kimetsu")
                            .cornerRadius(20)
                            .overlay(
                                Text("Preventa")
                                    .font(.system(size: 20,weight: .bold,design: .rounded))
                                    .padding(.horizontal)
                                    .frame(width: 150, height: 40)
                                    .background(Color.mint)
                                    .cornerRadius(20)
                                    .offset(x: 99, y: 236)
                            )
                        HStack{
                            Text("TB99")
                                .clipShape(RoundedRectangle(cornerRadius: 30))
                                .font(.system(size: 15, weight: .bold, design: .rounded))
                                .background(Color.gray)
                                .padding(5)
                                .foregroundStyle(.white)
                            Text("155 min")
                                .font(.system(size: 15, weight: .bold, design: .rounded))
                                .padding()
                        }.frame(width:350, alignment: .leading)
                        HStack{
                            Text("Demon Slayer: Kimetsu no Yaib Castillo infinito")
                                .font(.system(size: 30, weight: .bold, design: .rounded))
                                .lineLimit(1)
                                .truncationMode(.middle)
                                
                             
                        }.frame(width:350, alignment: .leading)
                        
                        HStack{
                            Text("Ver detalles").font(.system(size: 20)
                            ).underline(true, color: .blue)
                                .foregroundStyle(.blue)
                            Image(systemName: "info.circle")
                                .foregroundStyle(.blue)
                             
                        }.frame(width:350, alignment: .leading)
                        }
                    VStack {
                        Image("kimetsu")
                            .cornerRadius(20)
                            .overlay(
                                Text("Preventa")
                                    .font(.system(size: 20,weight: .bold,design: .rounded))
                                    .padding(.horizontal)
                                    .frame(width: 150, height: 40)
                                    .background(Color.mint)
                                    .cornerRadius(20)
                                    .offset(x: 99, y: 236)
                            )
                        HStack{
                            Text("TBC")
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                                .font(.system(size: 15, weight: .bold, design: .rounded))
                                .background(Color.gray)
                                .padding(5)
                                .foregroundStyle(.white)
                            Text("155 min")
                                .font(.system(size: 15, weight: .bold, design: .rounded))
                                .padding()
                        }.frame(width:350, alignment: .leading)
                        HStack{
                            Text("Demon Slayer: Kimetsu no Yaib Castillo infinito")
                                .font(.system(size: 30, weight: .bold, design: .rounded))
                                .lineLimit(1)
                                .truncationMode(.middle)
                                
                             
                        }.frame(width:350, alignment: .leading)
                        
                        HStack{
                            Text("Ver detalles").font(.system(size: 20)
                            ).underline(true, color: .blue)
                                .foregroundStyle(.blue)
                            Image(systemName: "info.circle")
                                .foregroundStyle(.blue)
                             
                        }.frame(width:350, alignment: .leading)
                        }
  
                }
                .padding()
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
