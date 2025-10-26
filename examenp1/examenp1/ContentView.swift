//
//  ContentView.swift
//  examenp1
//
//  Created by Zurisabdai Núñez Velázquez on 15/09/25.
//

import SwiftUI

struct ContentView: View {
    @State var tarjeta1: Color = .red
    @State var tarjeta2: Color = .blue
    @State var tarjeta3: Color = .orange
    @State var tarjeta4: Color = .pink
    @State var tarjeta5: Color = .cyan
    @State var esconder = false
    var body: some View {
        VStack {
            ScrollView{
                VStack{
                    Text("Tarjetas de crédito")
                        .font(.title2)
                    VStack{
                        //Tarjeta 1
                        VStack(alignment: .leading, spacing: 12){
                            VStack(alignment: .leading, spacing: 8){
                                HStack{
                                    Image(systemName:"wifi.exclamationmark")
                                        .rotationEffect(.degrees(90))
                                        .foregroundStyle(Color.white)
                                }.offset(x:200, y: -0)
                                HStack{
                                    Text("Banamex")
                                        .foregroundColor(.white)
                                    Image("banamex")
                                        .resizable()
                                        .frame(width: 20, height:20)
                                }.offset(x:-100, y: -30)
                                HStack{
                                    Text(esconder ? "*****":"2234 5678 9016678").foregroundColor(.white).font(.system(size: 15,weight: .light))
                                }.offset(x:-100, y: -20)
                                HStack{
                                    Text("Teresa Lisette Rico Soto").foregroundColor(.white).font(.system(size: 12,weight: .light))
                                }.offset(x:-100, y: -10)
                                HStack{
                                    Button(action:{tarjeta1 = (tarjeta1 == .red) ? .gray: .red}){
                                        Image(systemName: esconder ? "lock.open" :"exclamationmark.lock")
                                            .font(.title2)
                                        Text("Bloquear")
                                    }
                                }.offset(x:-100, y: 20).foregroundStyle(Color.white)
                                ZStack{
                                    Circle()
                                        .foregroundStyle(Color.blue)
                                        .frame(width: 30, height: 30)
                                        .overlay {
                                        Circle().stroke(lineWidth: 2)
                                        }
                                    Circle()
                                        .foregroundStyle(Color.orange)
                                        .frame(width: 30, height: 30)
                                        .overlay {
                                        Circle().stroke(lineWidth: 2)
                                        }
                                        .offset(x:20, y: 0)
                                    Text("Mastercard").foregroundStyle(Color.white)
                                        .font(.system(size:10))
                                        .offset(x:10, y:15)
                                }.offset(x:190, y: -0)
                            }
                        }.frame(width: 350, height: 150)
                            .padding(20)
                            .background(tarjeta1)
                            .cornerRadius(16)
                        //Tarjeta 2
                        VStack(alignment: .leading, spacing: 12){
                            VStack(alignment: .leading, spacing: 8){
                                HStack{
                                    Image(systemName:"wifi.exclamationmark")
                                        .rotationEffect(.degrees(90))
                                        .foregroundStyle(Color.white)
                                }.offset(x:200, y: -0)
                                
                                HStack{
                                    Text("Mercado pago")
                                        .foregroundColor(.white)
                                    Image("mercado")
                                        .resizable()
                                        .frame(width: 20, height:20)
                                }.offset(x:-100, y: -30)
                                HStack{
                                    Text(esconder ?"*****":"22 5678 9012").foregroundColor(.white).font(.system(size: 15,weight: .light))
                                }.offset(x:-100, y: -20)
                                HStack{
                                    Text("Teresa Lisette Rico Soto").foregroundColor(.white).font(.system(size: 12,weight: .light))
                                }.offset(x:-100, y: -10)
                                HStack{
                                    Button(action:{tarjeta2 = (tarjeta2 == .blue) ? .gray: .blue}){
                                        Image(systemName: "exclamationmark.lock")
                                            .font(.title2)
                                        Text("Bloquear")
                                    }
                                }.offset(x:-100, y: 20).foregroundStyle(Color.white)
                                ZStack{
                                    Circle()
                                        .foregroundStyle(Color.black)
                                        .frame(width: 30, height: 30)
                                        .overlay {
                                        Circle().stroke(lineWidth: 2)
                                        }
                                    Text("VISA").foregroundStyle(Color.white)
                                        .font(.system(size:10))
                                        .offset(x:0, y:1)
                                }.offset(x:190, y: -0)
                            }
                        }.frame(width: 350, height: 150)
                            .padding(20)
                            .background(tarjeta2)
                            .cornerRadius(16)
                            .offset( y: -10)
                        //tarejta 3
                        VStack(alignment: .leading, spacing: 12){
                            VStack(alignment: .leading, spacing: 8){
                                HStack{
                                    Image(systemName:"wifi.exclamationmark")
                                        .rotationEffect(.degrees(90))
                                        .foregroundStyle(Color.white)
                                }.offset(x:200, y: -0)
                                
                                HStack{
                                    Text("Mercado pago")
                                        .foregroundColor(.white)
                                    Image("mercado")
                                        .resizable()
                                        .frame(width: 20, height:20)
                                }.offset(x:-100, y: -30)
                                HStack{
                                    Text(esconder ?"*****":"2234 5678 901345").foregroundColor(.white).font(.system(size: 15,weight: .light))
                                }.offset(x:-100, y: -20)
                                HStack{
                                    Text("Teresa Lisette Rico Soto").foregroundColor(.white).font(.system(size: 12,weight: .light))
                                }.offset(x:-100, y: -10)
                                HStack{
                                    Button(action:{tarjeta3 = (tarjeta3 == .orange) ? .gray: .orange}){
                                        Image(systemName: "exclamationmark.lock")
                                            .font(.title2)
                                        Text("Bloquear")
                                    }
                                }.offset(x:-100, y: 20).foregroundStyle(Color.white)
                                ZStack{
                                    Circle()
                                        .foregroundStyle(Color.black)
                                        .frame(width: 30, height: 30)
                                        .overlay {
                                        Circle().stroke(lineWidth: 2)
                                        }
                                    Text("VISA").foregroundStyle(Color.white)
                                        .font(.system(size:10))
                                        .offset(x:0, y:1)
                                }.offset(x:190, y: -0)
                            }
                        }.frame(width: 350, height: 150)
                            .padding(20)
                            .background(tarjeta3)
                            .cornerRadius(16)
                            .offset( y: -20)
                        //tarejta 4
                        VStack(alignment: .leading, spacing: 12){
                            VStack(alignment: .leading, spacing: 8){
                                HStack{
                                    Image(systemName:"wifi.exclamationmark")
                                        .rotationEffect(.degrees(90))
                                        .foregroundStyle(Color.white)
                                }.offset(x:200, y: -0)
                                
                                HStack{
                                    Text("Mercado pago")
                                        .foregroundColor(.white)
                                    Image("mercado")
                                        .resizable()
                                        .frame(width: 20, height:20)
                                }.offset(x:-100, y: -30)
                                HStack{
                                    Text(esconder ?"*****":"2234 5678 901389").foregroundColor(.white).font(.system(size: 15,weight: .light))
                                }.offset(x:-100, y: -20)
                                HStack{
                                    Text("Teresa Lisette Rico Soto").foregroundColor(.white).font(.system(size: 12,weight: .light))
                                }.offset(x:-100, y: -10)
                                HStack{
                                    Button(action:{tarjeta4 = (tarjeta4 == .pink) ? .gray: .pink}){
                                        Image(systemName: "exclamationmark.lock")
                                            .font(.title2)
                                        Text("Bloquear")
                                    }
                                }.offset(x:-100, y: 20).foregroundStyle(Color.white)
                                ZStack{
                                    Circle()
                                        .foregroundStyle(Color.black)
                                        .frame(width: 30, height: 30)
                                        .overlay {
                                        Circle().stroke(lineWidth: 2)
                                        }
                                    Text("VISA").foregroundStyle(Color.white)
                                        .font(.system(size:10))
                                        .offset(x:0, y:1)
                                }.offset(x:190, y: -0)
                            }
                        }.frame(width: 350, height: 150)
                            .padding(20)
                            .background(tarjeta4)
                            .cornerRadius(16)
                            .offset( y: -40)
                        //Tarjeta 5
                        VStack(alignment: .leading, spacing: 12){
                            VStack(alignment: .leading, spacing: 8){
                                HStack{
                                    Image(systemName:"wifi.exclamationmark")
                                        .rotationEffect(.degrees(90))
                                        .foregroundStyle(Color.white)
                                }.offset(x:200, y: -0)
                                
                                HStack{
                                    Text("Mercado pago")
                                        .foregroundColor(.white)
                                    Image("mercado")
                                        .resizable()
                                        .frame(width: 20, height:20)
                                }.offset(x:-100, y: -30)
                                HStack{
                                    Text(esconder ?"*****":"2234 5678 90167").foregroundColor(.white).font(.system(size: 15,weight: .light))
                                }.offset(x:-100, y: -20)
                                HStack{
                                    Text("Teresa Lisette Rico Soto").foregroundColor(.white).font(.system(size: 12,weight: .light))
                                }.offset(x:-100, y: -10)
                                HStack{
                                    Button(action:{tarjeta5 = (tarjeta5 == .cyan) ? .gray: .cyan}){
                                        Image(systemName: "exclamationmark.lock")
                                            .font(.title2)
                                        Text("Bloquear")
                                    }
                                }.offset(x:-100, y: 20).foregroundStyle(Color.white)
                                ZStack{
                                    Circle()
                                        .foregroundStyle(Color.blue)
                                        .frame(width: 30, height: 30)
                                        .overlay {
                                        Circle().stroke(lineWidth: 2)
                                        }
                                    Circle()
                                        .foregroundStyle(Color.orange)
                                        .frame(width: 30, height: 30)
                                        .overlay {
                                        Circle().stroke(lineWidth: 2)
                                        }
                                        .offset(x:20, y: 0)
                                    Text("Mastercard").foregroundStyle(Color.white)
                                        .font(.system(size:10))
                                        .offset(x:10, y:15)
                                }.offset(x:190, y: -0)
                            }
                        }.frame(width: 350, height: 150)
                            .padding(20)
                            .background(tarjeta5)
                            .cornerRadius(16)
                            .offset( y: -60)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
