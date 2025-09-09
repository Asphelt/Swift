//
//  ContentView.swift
//  shapes
//
//  Created by Zurisabdai Núñez Velázquez on 05/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack{
                Circle()
                    .foregroundStyle(Color.blue)
                    .frame(width: 100, height: 100)
                HStack{
                    Capsule()
                        .foregroundStyle(Color.blue)
                        .frame(width: 150, height: 40)
                }
            }
            ZStack{
                Circle()
                    .foregroundStyle(Color.blue)
                    .frame(width: 100, height: 100)
                HStack{
                    Rectangle()
                        .foregroundStyle(Color.white)
                        .frame(width: 40, height: 40)
                }
            }
            VStack(spacing: 0){
                Rectangle()
                    .foregroundStyle(Color.red)
                    .frame(width: 200, height: 50)
                    .overlay {
                    Rectangle().stroke(lineWidth: 2)
                    }
                Rectangle()
                    .foregroundStyle(Color.blue)
                    .frame(width: 200, height: 50)
                    .overlay {
                    Rectangle().stroke(lineWidth: 2)
                    }
                Rectangle()
                    .stroke(Color.black)
                    .foregroundStyle(Color.white)
                    .frame(width: 200, height: 50)
                    .overlay {
                    Rectangle().stroke(lineWidth: 2)
                    }
               
                
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
