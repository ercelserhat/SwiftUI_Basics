//
//  TahminEkrani.swift
//  GuessTheNumber
//
//  Created by Serhat on 8.10.2023.
//

import SwiftUI

struct TahminEkrani: View {
    
    @State private var sonucEkraninaGecis = false
    @State private var kalanHak = 5
    @State private var yonlendirme = ""
    @State private var textFieldTahmin = ""
    @State private var rastgeleSayi = 0
    @State private var sonuc = false
    
    var body: some View {
        VStack(spacing: 100){
            Text("Kalan Hak: \(kalanHak)")
                .font(.system(size: 30))
                .foregroundStyle(.red)
            
            Text("Yardım: \(yonlendirme)")
                .font(.system(size: 20))
            
            TextField("Tahmin", text: $textFieldTahmin)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Tahmin Et"){
                kalanHak -= 1
                if let tahmin = Int(textFieldTahmin){
                    if tahmin == rastgeleSayi{
                        sonucEkraninaGecis = true
                        sonuc = true
                        return
                    }
                    if tahmin > rastgeleSayi{
                        yonlendirme = "Azalt"
                    }
                    if tahmin < rastgeleSayi{
                        yonlendirme = "Arttır"
                    }
                    if kalanHak == 0{
                        sonucEkraninaGecis = true
                        sonuc = false
                    }
                    textFieldTahmin = ""
                }
            }.foregroundStyle(.white)
                .frame(width: 250, height: 50)
                .background(.blue)
                .cornerRadius(10)
        }.navigationDestination(isPresented: $sonucEkraninaGecis){
            SonucEkrani(sonuc: sonuc)
        }.onAppear{
            rastgeleSayi = Int.random(in: 0...100)
            print("Rastgele Sayı: \(rastgeleSayi)")
            kalanHak = 5
            yonlendirme = ""
            textFieldTahmin = ""
        }
    }
}

#Preview {
    TahminEkrani()
}
