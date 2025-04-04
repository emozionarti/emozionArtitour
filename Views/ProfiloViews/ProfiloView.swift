//
//  ProfiloView.swift
//  emozionArtitour
//
//  Created by Carmela Romano on 13/03/25.
//
import SwiftUI

struct ProfiloView: View {
    @State private var showLogin = false

    var body: some View {
        NavigationView {
            VStack {
                // Titolo Profilo
                Text("Profilo")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)

                // Divider per separare il titolo dalla lista
                Divider()
                    .frame(height: 1)
                    .background(Color.gray.opacity(0.3))
                    .padding(.horizontal)

                // Contenuto in base al login
                if userIsLoggedIn() {
                    // Se l'utente è loggato, mostra il profilo
                    Text("Benvenuto, Nome Utente")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding()
                } else {
                    // Se l'utente non è loggato, mostra il bottone per il login
                    Button("Accedi o registrati") {
                        showLogin = true
                    }
                    .font(.headline)
                    .padding()
                    .background(Color(red: 2/255, green: 179/255, blue: 167/255))
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    .padding(.top)
                }

                // lista delle voci del profilo
                List {
                    Section(header: Text("Viaggi").font(.headline)) {
                        NavigationLink(destination: TourSalvatiView()) {
                            Text("Tour salvati")
                        }
                    }

                    Section(header: Text("Info pagamenti").font(.headline)) {
                        NavigationLink(destination: MetodiDiPagamentoView()) {
                            Text("Metodi di pagamento")
                        }
                    }

                    Section(header: Text("Preferenze").font(.headline)) {
                        NavigationLink(destination: DettagliPersonaliView()) {
                            Text("Dettagli personali")
                        }

                        NavigationLink(destination: ImpostazioniDispositivoView()) {
                            Text("Impostazioni dispositivo")
                        }
                    }
                    Section(header: Text("Aiuto e supporto").font(.headline)) {
                        NavigationLink(destination: ContattaciView()) {
                            Text("Contattaci")
                        }

                    }
                    Section(header: Text("Informazioni legali e privacy").font(.headline)) {
                        NavigationLink(destination: PrivacyView()) {
                            Text("Privacy e gestione dati")
                        }
                        NavigationLink(destination: NoteLegaliView()) {
                            Text("Note legali")
                        }
                    } // Altri elementi della lista...
                }
                .listStyle(GroupedListStyle())

                // Bottone Esci
                Button(action: {
                    esciDallAccount()
                }) {
                    Text("Esci")
                        .foregroundColor(.red)
                        .padding()
                }
            }
            .navigationBarHidden(true) // Nascondi la barra di navigazione standard
            .sheet(isPresented: $showLogin) {
                // Mostra la modale per il login
                LoginView()
            }
        }
    }

    // Funzione per controllare se l'utente è loggato
    func userIsLoggedIn() -> Bool {
        return false 
    }

    // Funzione per eseguire il logout
    private func esciDallAccount() {
        print("Uscito dall'account.")
    }
}

struct ProfiloView_Previews: PreviewProvider {
    static var previews: some View {
        ProfiloView()
    }
}
