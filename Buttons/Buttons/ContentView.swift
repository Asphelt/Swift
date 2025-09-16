//
//  ContentView.swift
//  Buttons
//
//  Created by Zurisabdai Núñez Velázquez on 05/09/25.
//

import SwiftUI



struct ContentView: View {

    @State var size: CGFloat = 1.5

    @State var color: Color = .black

    @State var rotation: Angle = .zero

    var body: some View {

        

        ZStack {

            Image(systemName: "suit.heart")

                .foregroundStyle(color)

                .scaleEffect(size)

                .hueRotation(rotation)
                

        }

        

        HStack {

            Button(action: {size += 0.5}){

                Text("+").foregroundStyle(.white).font(.largeTitle)

                    //.padding(10)

            }

            .padding(10)

            .frame(width: 100, height: 40)

            .background(Color.blue)

            .cornerRadius(40)

            Button(action: {size -= 0.5}){

                Text("-").foregroundStyle(.white).font(.largeTitle)

                    //.padding(10)

            }

            .padding(10)

            .frame(width: 100, height: 40)

            .background(Color.blue)

            .cornerRadius(40)

            

        }

        

        HStack{

            Button(action: {color = (color == .black) ? .red: .black}) {

                Text("Cambiar Color")

                    .foregroundStyle(.white)

                    .padding()

                    .frame(width: 180, height: 40)

                    .background(Color.blue)

                    .cornerRadius(40)

                        }

            Button(action: {

                if rotation < .degrees(180) {

                rotation += .degrees(10)

                } else {

                rotation -= .degrees(10)

                }

            }) {

                Text("Rotar")

                    .foregroundStyle(.white)

                    .padding()

                    .frame(width: 180, height: 40)

                    .background(Color.blue)

                    .cornerRadius(40)

                        }

        }

        .padding()

    }

}



#Preview {

    ContentView(size: 1.5)

}
