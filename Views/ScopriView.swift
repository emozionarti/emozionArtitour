//
//  ScopriView.swift
//  emozionArtitour
//
//  Created by Carmela Romano on 13/03/25.
//
import SwiftUI

struct ScopriView: View {
    @StateObject private var viewModel = TourViewModel() // ViewModel per gestire i tour

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Esplora i Tour")
                        .font(.largeTitle)
                        .bold()
                        .padding(.horizontal)

                    if viewModel.tours.isEmpty {
                        ProgressView("Caricamento...") // Mostra un'animazione di caricamento
                            .padding()
                    } else {
                        ForEach(viewModel.tours) { tour in
                            NavigationLink(destination: TourDetailView(tour: tour)) {
                                TourCardView(tour: tour) // Usa una card personalizzata
                            }
                            .buttonStyle(PlainButtonStyle()) // Rimuove effetto evidenziato
                        }
                    }
                }
                .padding(.top)
            }
            .navigationTitle("Scopri")
            .onAppear {
                viewModel.loadAnteprimaTours() // Carica i dati all'avvio
            }
        }
    }
}
