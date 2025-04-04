//
//  TabBarView.swift
//  emozionArtitour
//
//  Created by Carmela Romano on 13/03/25.
//


import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            // Prima tab: Home
            Text("Scopri")
                .tabItem {
                    Label("Scopri", systemImage: "magnifyingglass")
                }

            // Seconda tab: Categorie
            Text("Tour")
                .tabItem {
                    Label("Tour", systemImage: "square.grid.2x2")
                }

            // Terza tab: Impostazioni
            Text("Carrello")
                .tabItem {
                    Label("Carrello", systemImage: "cart.fill")
                }
            // Quarta tab: Profilo
            Text("Profilo")
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
