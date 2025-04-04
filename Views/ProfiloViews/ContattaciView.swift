//
//  ContattaciView.swift
//  emozionArtitour
//
//  Created by Carmela Romano on 03/04/25.
//

import SwiftUI

struct ContattaciView: View {
    
    var body: some View {
        List{
            VStack{
                HStack{
                    Image(systemName: "phone.fill")
                    Text("+39 081 424274")
                        .font(.title)
                }.padding()
                
                HStack{
                    Image(systemName: "phone.fill")
                    Text("+39 333 8065959")
                        .font(.title)
                }.padding()
                
                HStack{
                    Image(systemName: "house")
                    Text("Via Starza Piccioli, 98 - 80048 Sant'Anastasia (NA), Italia")
                }.padding()
                
                HStack{
                    Image(systemName: "envelope")
                    Text("assistenza@emozion-arti.com")
                }.padding()
                
                    .navigationTitle("Contattaci")
            }
        }
    }
}
