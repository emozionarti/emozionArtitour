//
//  CarrelloView.swift
//  emozionArtitour
//
//  Created by Carmela Romano on 13/03/25.
//

import SwiftUI

struct CarrelloView: View {
    var items: [String]

    var body: some View {
        List(items, id: \.self) { item in
            Text(item)
        }
        .navigationTitle("Carrello")
    }
}

struct CarrelloView_Previews: PreviewProvider {
    static var previews: some View {
        CarrelloView(items: ["Item 1", "Item 2", "Item 3"])
    }
}
