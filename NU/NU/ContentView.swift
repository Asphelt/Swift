//
//  ContentView.swift
//  NU
//
//  Created by Zurisabdai Núñez Velázquez on 12/09/25.
//
import SwiftUI

struct ContentView: View {
    @State private var isBalanceHidden = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                headerSection
                accountSection
                actionButtonsSection
                creditCardSection
                personalLoanSection
                discoverMoreSection
            }
        }
        .background(Color.black)
        .ignoresSafeArea()
    }
    private var headerSection: some View {
        ZStack {
            LinearGradient(
                colors: [Color.purple, Color.purple.opacity(0.8)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            
            VStack(spacing: 20) {
                HStack {
                    Button(action: {}) {
                        Image(systemName: "photo")
                            .font(.title2)
                            .foregroundColor(.white)
                            .frame(width: 50, height: 50)
                            .background(Color.white.opacity(0.2))
                            .clipShape(Circle())
                    }
                    
                    Spacer()
                    
                    HStack(spacing: 20) {
                        Button(action: {
                            withAnimation(.easeInOut(duration: 0.3)) {
                                isBalanceHidden.toggle()
                            }
                        }) {
                            Image(systemName: isBalanceHidden ? "eye.slash" : "eye")
                                .font(.title2)
                                .foregroundColor(.white)
                        }
                        
                        Button(action: {}) {
                            Image(systemName: "questionmark.circle")
                                .font(.title2)
                                .foregroundColor(.white)
                        }
                        
                        Button(action: {}) {
                            Image(systemName: "person.2")
                                .font(.title2)
                                .foregroundColor(.white)
                        }
                    }
                }
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        HStack {
                            Image(systemName: "creditcard.fill")
                                .foregroundColor(.purple)
                                .font(.title3)
                            
                            VStack(alignment: .leading, spacing: 2) {
                                Text("Haz crecer tu línea de crédito y tus")
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                                Text("ahorros")
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                            }
                            
                            Spacer()
                            
                            Button(action: {}) {
                                Image(systemName: "ellipsis")
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)
                }
            }
            .padding()
        }
        .frame(height: 200)
    }
    private var accountSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("Cuenta Nu")
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
            
            HStack {
                Text(isBalanceHidden ? "••••••" : "$0.00")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                
                Spacer()
            }
        }
        .padding()
    }
    
    private var actionButtonsSection: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                actionButton(
                    icon: "plus.rectangle.on.rectangle",
                    title: "Nuevo",
                    subtitle: "Recibir y\ndepositar",
                    isHighlighted: true
                )
                
                actionButton(
                    icon: "arrow.up.right",
                    title: "",
                    subtitle: "Transferir",
                    isHighlighted: false
                )
                
                actionButton(
                    icon: "dollarsign.circle",
                    title: "$2,000",
                    subtitle: "Simular\npréstamo",
                    isHighlighted: true
                )
                
                actionButton(
                    icon: "dollarsign.circle.fill",
                    title: "$7,981",
                    subtitle: "Disponer de\nsaldo",
                    isHighlighted: true
                )
            }
            .padding(.horizontal)
        }
        .padding(.bottom)
    }
    
    private func actionButton(icon: String, title: String, subtitle: String, isHighlighted: Bool) -> some View {
        VStack(spacing: 8) {
            ZStack {
                Circle()
                    .fill(Color.gray.opacity(0.3))
                    .frame(width: 70, height: 70)
                
                if isHighlighted && !title.isEmpty {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.purple)
                        .frame(width: 50, height: 20)
                        .overlay(
                            Text(title)
                                .font(.caption)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                        )
                        .offset(y: -25)
                }
                
                Image(systemName: icon)
                    .font(.title2)
                    .foregroundColor(.white)
            }
            
            Text(subtitle)
                .font(.caption)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .lineLimit(2)
        }
        .frame(width: 80)
    }
    private var creditCardSection: some View {
        HStack {
            Text("Tarjeta de crédito")
                .font(.title2)
                .fontWeight(.medium)
                .foregroundColor(.white)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding()
    }
    private var personalLoanSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            VStack(alignment: .leading, spacing: 8) {
                Text("Préstamo personal")
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                
                Text("Simula y descubre en segundos la oferta que tenemos para ti.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
            }
            
            Button(action: {}) {
                Text("Simular préstamo")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.purple)
                    .cornerRadius(25)
            }
        }
        .padding()
    }
    private var discoverMoreSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Descubre más")
                .font(.title2)
                .fontWeight(.medium)
                .foregroundColor(.white)
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    discoverCard(
                        title: "Prueba la Billetera de Google™",
                        subtitle: "Agrega tu tarjeta de manera rápida y segura.",
                        buttonText: "Saber más"
                    )
                    
                    discoverCard(
                        title: "La era Nu se acerca",
                        subtitle: "Invita a alguien más. Cuenta Nu con cashback anual.",
                        buttonText: "¡Hazlo ahora!"
                    )
                }
                .padding(.horizontal)
            }
        }
        .padding(.bottom)
    }
    
    private func discoverCard(title: String, subtitle: String, buttonText: String) -> some View {
        VStack(alignment: .leading, spacing: 12) {
            Image("nu1")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 120)
                .cornerRadius(10)
        
            VStack(alignment: .leading, spacing: 8) {
                Text(title)
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .lineLimit(2)
                
                Text(subtitle)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(3)
            }
            
            Button(action: {}) {
                Text(buttonText)
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .background(Color.purple)
                    .cornerRadius(20)
            }
        }
        .frame(width: 250)
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(12)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
