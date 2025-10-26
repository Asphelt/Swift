//
//  ContentView.swift
//  practica_nu
//
//  Created by Zurisabdai Núñez Velázquez on 13/09/25.
//

import SwiftUI

struct ContentView: View {
    @State private var hideBalance = false
    var body: some View {
        VStack {
            ZStack(){
                Color.purple
                VStack{
                    //Header
                    HStack{
                        ZStack{
                            Circle()
                                .frame(height: 50)
                            Image(systemName: "photo.on.rectangle")
                                .foregroundStyle(Color.white)
                                .padding()
                        }
                        Spacer()
                        HStack(spacing: 20){
                            Button(action: {withAnimation(.easeInOut) { hideBalance.toggle() }
                            }){
                                Image(systemName: hideBalance ? "eye.slash" : "eye")
                                    .foregroundStyle(Color.white)
                                    .font(.title2)
                            }
                            Button(action: {}){
                                Image(systemName: "questionmark.circle")
                                    .foregroundStyle(Color.white)
                                    .font(.title2)
                            }
                            Button(action: {}){
                                Image(systemName: "person.2.badge.plus")
                                    .foregroundStyle(Color.white)
                                    .font(.title2)
                            }
                        }
                    }.padding(.horizontal, 20)
                        .padding(.top, 40)
                    //rectangulo
                    HStack{
                        Image(systemName: "creditcard")
                            .foregroundStyle(Color.purple)
                            .font(.title2)
                            .padding(16)
                        Spacer()
                        VStack(alignment:.leading, spacing: 2){
                            Text("Haz crecer tu línea de crédito y tus ahorros").foregroundStyle(Color.purple).font(.system(size: 16, weight: .medium))
                        }
                        Spacer()
                        Image(systemName: "ellipsis")
                            .rotationEffect(.degrees(90))
                    }
                    .padding(16)
                    .background(Color.white)
                    .cornerRadius(12)
                    .padding(.horizontal,20)
                    .padding(.bottom, 20)
                }
            }.frame(height: 200)
            HStack{
                VStack{
                    Text("Cuenta NU")
                    .foregroundStyle(Color.white).font(.system(size:16, weight: .medium))
                    Text(hideBalance ?"*****":"$0.00")
                    .foregroundStyle(Color.white).font(.system(size:16, weight: .medium))
                }
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundStyle(Color.white).font(.system(size:16, weight: .medium))
            }.padding()
            ScrollView(){
                HStack(spacing:30){
                    VStack{
                        ZStack{
                            Circle().frame(height: 70).foregroundStyle(Color.white)
                            Image(systemName: "arrow.down.square")
                            
                            Text("Nuevo")
                                .font(.caption2)
                                .foregroundColor(.white)
                                .padding(.horizontal, 15)
                                .padding(.vertical, 6)
                                .background(Color.purple)
                                .cornerRadius(8)
                                .offset(y: 23)
                        }
                        Text("Recibir y\ndepositar")
                            .foregroundColor(.white)
                            .font(.caption)
                            .multilineTextAlignment(.center)
                    }
                    VStack{
                        ZStack{
                            Circle().frame(height: 70).foregroundStyle(Color.white)
                            Image(systemName: "arrow.down.square")
                            
                            Text("Nuevo")
                                .font(.caption2)
                                .foregroundColor(.white)
                                .padding(.horizontal, 15)
                                .padding(.vertical, 6)
                                .background(Color.purple)
                                .cornerRadius(8)
                                .offset(y: 23)
                        }
                        Text("Recibir y\ndepositar")
                            .foregroundColor(.white)
                            .font(.caption)
                            .multilineTextAlignment(.center)
                    }
                    VStack{
                        ZStack{
                            Circle().frame(height: 70).foregroundStyle(Color.white)
                            Image(systemName: "arrow.down.square")
                            
                            Text("Nuevo")
                                .font(.caption2)
                                .foregroundColor(.white)
                                .padding(.horizontal, 15)
                                .padding(.vertical, 6)
                                .background(Color.purple)
                                .cornerRadius(8)
                                .offset(y: 23)
                        }
                        Text("Recibir y\ndepositar")
                            .foregroundColor(.white)
                            .font(.caption)
                            .multilineTextAlignment(.center)
                    }
                    VStack{
                        ZStack{
                            Circle().frame(height: 70).foregroundStyle(Color.white)
                            Image(systemName: "arrow.down.square")
                            
                            Text("Nuevo")
                                .font(.caption2)
                                .foregroundColor(.white)
                                .padding(.horizontal, 15)
                                .padding(.vertical, 6)
                                .background(Color.purple)
                                .cornerRadius(8)
                                .offset(y: 23)
                        }
                        Text("Recibir y\ndepositar")
                            .foregroundColor(.white)
                            .font(.caption)
                            .multilineTextAlignment(.center)
                    }
                }
                Divider()
                    .background(Color.gray.bold())
                    .padding(.horizontal, 20)
                HStack{
                    VStack{
                        Text("Tarjeta de credito")
                            .foregroundStyle(Color.white).font(.system(size:16, weight: .heavy))
                    }
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundStyle(Color.white).font(.system(size:16, weight: .medium))
                }.padding()
                HStack{
                    VStack{
                        Text("Fecha de corte: 16 de septiembre")
                        .foregroundStyle(Color.white).font(.system(size:16, weight: .medium))
                        Text("Limite disponible 7800.00")
                        .foregroundStyle(Color.white).font(.system(size:16, weight: .medium))
                        .padding(.trailing, 50)
                    }
                    Spacer()
                }.padding()
                Divider()
                    .background(Color.gray.bold())
                    .padding(.horizontal, 20)
                HStack(spacing: 16){
                    Image(systemName: "creditcard")
                        .foregroundStyle(Color.white)
                        .font(.title2)
                    Text("Mis tarjetas")
                        .foregroundStyle(Color.white)
                    Spacer()
                }
                .padding(16)
                .background(Color.gray)
                .cornerRadius(12)
                .padding(.horizontal,20)
                Divider()
                    .background(Color.gray.bold())
                    .padding(.horizontal, 20)
                HStack{
                    Text("Préstamo personal")
                        .foregroundStyle(Color.white).font(.system(size: 16, weight: .bold))
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundStyle(Color.white)
                        .padding(.trailing)
                }.padding(.top, 5)
                HStack{
                    Text("Simula y descubre en segundo las ofertas que tenemos para ti")
                        .foregroundStyle(Color.gray)
                }.padding(.trailing,50)
                HStack{
                    Text("Simular prestamo")
                        .foregroundStyle(Color.white)
                        .font(.system(size: 20, weight: .medium))
                        .padding(.all, 2)
                    
                }.padding(.all, 7)
                    .background(Color.purple)
                    .cornerRadius(20)
                    .offset(x: -100)
                //.offset(x: 20, y: -10)
                Divider().background(Color.gray.bold())
                    .padding(.horizontal,20)
                HStack{
                    Text("Descubre más")
                        .foregroundStyle(Color.white).font(.system(size: 20, weight: .bold))
                    Spacer()
                }.padding(.top, 5)
                ScrollView(.horizontal){
                    HStack(spacing: 16){
                        VStack(alignment: .leading, spacing: 12){
                            Image("nu")
                                .resizable()
                                .scaledToFill()
                                .frame(height: 140)
                                .clipped()
                            VStack(alignment: .leading, spacing: 8){
                                Text("Prueba la billetera de google").foregroundColor(.white).font(.system(size: 15,weight: .light))
                                Text("Agrega tu tarjeta de forma rapida y segura").foregroundColor(.white).font(.system(size: 12,weight: .light))
                            }
                            Button(action: {}){
                                Text("Saber más")
                                    .foregroundColor(.white)
                                    .fontWeight(.medium)
                                    .padding(.horizontal, 20)
                                    .padding(.vertical, 10)
                                    .background(Color.purple)
                                    .cornerRadius(16)
                            }
                        }.frame(width: 230)
                            .padding(20)
                            .background(Color.gray)
                            .cornerRadius(16)
                        
                        VStack(alignment: .leading, spacing: 12){
                            Image("nu")
                                .resizable()
                                .scaledToFill()
                                .frame(height: 140)
                                .clipped()
                            VStack(alignment: .leading, spacing: 8){
                                Text("Prueba la billetera de google").foregroundColor(.white).font(.system(size: 15,weight: .light))
                                Text("Agrega tu tarjeta de forma rapida y segura").foregroundColor(.white).font(.system(size: 12,weight: .light))
                            }
                            Button(action: {}){
                                Text("Saber más")
                                    .foregroundColor(.white)
                                    .fontWeight(.medium)
                                    .padding(.horizontal, 20)
                                    .padding(.vertical, 10)
                                    .background(Color.purple)
                                    .cornerRadius(16)
                            }
                        }.frame(width: 230)
                            .padding(20)
                            .background(Color.gray)
                            .cornerRadius(16)
                    }
                    
                    
                }
            }
    
        }
        .ignoresSafeArea()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
    }
}

#Preview {
    ContentView()
}
