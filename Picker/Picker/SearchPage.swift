//
//  SearchPage.swift
//  Picker
//
//  Created by Serhat on 10.10.2023.
//

import SwiftUI

struct SearchPage: View {
    
    @State private var aramaKelimesi = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                
            }.navigationTitle("Ara")
        }.searchable(text: $aramaKelimesi, prompt: "Ara")
            .onChange(of: aramaKelimesi){ s in
                print("Arama Sonucu: \(s)")
            }
    }
}

#Preview {
    SearchPage()
}
