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
    @State private var sonuc = "0"
    
    var body: some View {
        VStack(spacing: 30){
            Text(sonuc).font(.system(size: 30))
            TextField("Sayı 1", text: $tfSayi1)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            TextField("Sayı 2", text: $tfSayi2)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            HStack(spacing: 50){
                Button("TOPLA"){
                    if let sayi1 = Int(tfSayi1), let sayi2 = Int(tfSayi2){
                        let toplam = sayi1 + sayi2
                        sonuc = String(toplam)
                    }
                }
                Button("ÇARPMA"){
                    if let sayi1 = Int(tfSayi1), let sayi2 = Int(tfSayi2){
                        let carpim = sayi1 * sayi2
                        sonuc = String(carpim)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    Anasayfa()
}
