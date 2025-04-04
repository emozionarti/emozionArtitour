//
//  LoginView.swift
//  emozionArtitour
//
//  Created by Carmela Romano on 13/03/25.
//
import SwiftUI

struct LoginView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.4)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Capsule()
                    .frame(width: 40, height: 5)
                    .foregroundColor(.gray.opacity(0.5))
                    .padding(.top, 10)
                
                HStack {
                    Text("Accedi o registrati")
                        .font(.title2).bold()
                    Spacer()
                    Button(action: { dismiss() }) {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.gray)
                            .font(.title)
                    }
                }
                .padding(.horizontal)
                
                Text("Crea un account per acquistare i tuoi tour, accedere alle funzioni premium e ricevere offerte esclusive.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                // Pulsanti Social
                VStack(spacing: 12) {
                    SocialLoginButton(icon: "applelogo", text: "Continua con Apple")
                    SocialLoginButton(icon: "globe", text: "Continua con Google")
                }
                .padding(.top, 10)
                
                // Divider con "oppure"
                HStack {
                    Divider().frame(height: 1).background(Color.gray)
                    Text("oppure").foregroundColor(.gray)
                    Divider().frame(height: 1).background(Color.gray)
                }
                .padding(.horizontal, 30)
                .padding(.vertical, 10)
                
                // Campo email
                VStack(alignment: .leading) {
                    Text("Indirizzo email")
                        .font(.footnote)
                        .foregroundColor(.gray)
                    TextField("", text: .constant(""))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .padding(.horizontal)
                
                // Pulsante per email
                Button(action: {
                }) {
                    Text("Continua con l'email")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.black)
                        .clipShape(Capsule())
                        .shadow(radius: 2)
                }
                .padding(.horizontal)
                .padding(.top, 10)
                
                Spacer()
            }
            .padding()
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .frame(maxWidth: .infinity)
            .frame(height: 420)
            .padding(.horizontal)
        }
    }
}

struct SocialLoginButton: View {
    var icon: String
    var text: String
    
    var body: some View {
        Button(action: {
            // Azione per login
        }) {
            HStack {
                Image(systemName: icon)
                Text(text)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.white)
            .foregroundColor(.black)
            .clipShape(Capsule())
            .shadow(radius: 2)
        }
        .padding(.horizontal)
    }
}
