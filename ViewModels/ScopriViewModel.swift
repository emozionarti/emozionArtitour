//
//  ScopriViewModel.swift
//  emozionArtitour
//
//  Created by Carmela Romano on 13/03/25.
//

import SwiftUI

class ScopriViewModel: ObservableObject {
    @Published var scopriItems: [ScopriItem] = []

    func loadData() {
        scopriItems = [
            ScopriItem(title: "Articolo 1", description: "Descrizione dell'articolo 1"),
            ScopriItem(title: "Articolo 2", description: "Descrizione dell'articolo 2"),
            ScopriItem(title: "Articolo 3", description: "Descrizione dell'articolo 3")
        ]
    }
}
