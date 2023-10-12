//
//  ContentView.swift
//  MVVM
//
//  Created by Serhat on 12.10.2023.
//

import SwiftUI

struct Anasayfa: View {
    
    @State private var tfSayi1 = ""
    @State private var tfSayi2 = ""

    @ObservedObject private var viewModel = AnasayfaViewModel()
    
    var body: some View {
        VStack(spacing: 30){
            Text(viewModel.sonuc).font(.system(size: 30))
            TextField("Sayı 1", text: $tfSayi1)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            TextField("Sayı 2", text: $tfSayi2)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            HStack(spacing: 50){
                Button("TOPLA"){
                    viewModel.toplamaYap(alinanSayi1: tfSayi1, alinanSayi2: tfSayi2)
                }
                Button("ÇARPMA"){
                    viewModel.carpmaYap(alinanSayi1: tfSayi1, alinanSayi2: tfSayi2)
                }
            }
        }
        .padding()
    }
}

#Preview {
    Anasayfa()
}
