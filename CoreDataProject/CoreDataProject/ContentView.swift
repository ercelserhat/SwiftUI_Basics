//
//  ContentView.swift
//  CoreDataProject
//
//  Created by Serhat on 13.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        Text("")
            .onAppear(){
                let kdao = KisilerDao()
                /*kdao.kaydet(kisi_ad: "Serhat", kisi_tel: "1111")
                kdao.kaydet(kisi_ad: "Ahmet", kisi_tel: "2222")
                kdao.kaydet(kisi_ad: "Mehmet", kisi_tel: "3333")
                kdao.tumKisiler()
                
                kdao.ara(aramaKelimesi: "hat")*/
                
                kdao.getir(kisi_ad: "Serhat")
            }
    }
}

#Preview {
    ContentView()
}
