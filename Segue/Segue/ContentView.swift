//
//  ContentView.swift
//  Segue
//
//  Created by Serhat on 7.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: IkinciSayfa()){
                    Text("İkinci Sayfaya Git")
                }
            }
            .padding().navigationTitle("Anasayfa")
        }
    }
}

#Preview {
    ContentView()
}
