//
//  ShopView.swift
//  emozionArtitour
//
//  Created by Carmela Romano on 27/03/25.
//

import SwiftUI

struct ShopView: View {
    var categories: [String]

    var body: some View {
        List(categories, id: \.self) { category in
            Text(category)
        }
        .navigationTitle("I nostri Prodotti")
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView(categories: ["Product 1", "Product 2", "Product 3"])
    }
}
