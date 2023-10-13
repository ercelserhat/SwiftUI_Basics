//
//  KisiDetaySayfa.swift
//  PhoneBook
//
//  Created by Serhat on 11.10.2023.
//

import SwiftUI

struct KisiDetaySayfa: View {
    
    @State private var tfKisiAd = ""
    @State private var tfKisiTel = ""
    
    var kisi = KisilerModel()
    
    @Binding var kisilerListesi: [KisilerModel]
    
    var viewModel = KisiDetayViewModel()
    
    var body: some View {
        VStack(spacing: 30){
            TextField("Kişi Ad", text: $tfKisiAd)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            TextField("Kişi Tel", text: $tfKisiTel)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            Button("GÜNCELLE"){
                viewModel.guncelle(kisi: kisi, kisi_ad: tfKisiAd, kisi_tel: tfKisiTel)
                kisilerListesi.removeAll()
                
            }
            
        }.navigationTitle("Kişi Detay")
            .onAppear(){
                tfKisiAd = kisi.kisi_ad!
                tfKisiTel = kisi.kisi_tel!
            }
    }
}

/*#Preview {
    KisiDetaySayfa()
}*/
