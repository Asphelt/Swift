//
//  ContentView.swift
//  Textos
//
//  Created by Zurisabdai Núñez Velázquez on 08/09/25.
//

import SwiftUI

import SwiftData



struct ContentView: View {



    var body: some View {

       HStack {

           Text("Amarillo")

               .foregroundStyle(.green)

           Text("Azul")

               .foregroundStyle(.red)

           Text("Naranja")

               .foregroundStyle(.blue)

           

        }

        HStack(spacing: 20){

            Text("NEGRO")

                .frame(maxWidth: .infinity)

                .padding(.horizontal,15)

                .padding(.vertical,15)

                .background(Color.purple)

                .padding(.horizontal, 51 )

            Text("ROJO")

                .frame(maxWidth: .infinity)

                .padding(.horizontal,24)

                .background(Color.cyan)

                .foregroundStyle(Color.red)

                .cornerRadius(20)

                .padding(.horizontal, 49 )

            

                

        }

        .frame(maxWidth: .infinity)

        HStack(){

            Text("Verde")

        }

        .frame(maxWidth: .infinity)

        .padding(.vertical,20)

        .background(Color.orange)

        .foregroundStyle(Color.white)

        .font(.system(size: 30, weight: .bold))

        Spacer()

            .frame(height: 20)

        HStack(){

            Text("Morado")

                .font(.title2)

                .fontWeight(.medium)

                .padding(.horizontal,20)

                .padding(.bottom, 15)

                .frame(maxHeight: 40)

                .border(Color.purple, width: 2)

                .background(LinearGradient(

                    gradient: Gradient(colors: [.red, .green, .blue, .green, .red]),

                    startPoint: .topLeading,

                    endPoint: .bottomTrailing

                )

                )

         Spacer()

        }

        Spacer()

            .frame(height: 80)

        HStack(){

            Text("Prueba de colores")

                .rotationEffect(.degrees(45))

                .shadow(color: .red, radius: 4, x:2, y:2)

        }

        .frame(maxWidth: .infinity, maxHeight: 100)

        HStack {

            Spacer()

            VStack {

                Spacer()

                Text("Naranja")

                    .underline()

            }

        }

        .padding(.horizontal,5)

        .frame(maxWidth: .infinity, maxHeight: 100)

        

    }

        

}



#Preview {
    ContentView()
}
