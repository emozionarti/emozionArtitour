import SwiftUI

struct ContentView: View {
    @StateObject private var tourViewModel = TourViewModel()
    
    var body: some View {
        TabView {
            ScopriView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Scopri")
                }

            // TourView mostra le anteprime tour
            TourView(viewModel: tourViewModel)
                .tabItem {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Tour")
                }

            CarrelloView(items: ["Prodotto 1"])
                .tabItem {
                    Image(systemName: "cart")
                    Text("Carrello")
                }

            ShopView(categories: ["I nostri prodotti"])
                .tabItem {
                    Image(systemName: "storefront.fill")
                    Text("Shop")
                }

            ProfiloView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profilo")
                }
        }
    }
}

#Preview {
    ContentView()
}
