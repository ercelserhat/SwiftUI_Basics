//
//  ContentView.swift
//  Alamofire
//
//  Created by Serhat on 14.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("")
                .onAppear(){
                    let kisilerDao = KisilerDao()
                    //kisilerDao.kisileriYukle()
                    //kisilerDao.kaydet(kisi_ad: "ZEYNEP", kisi_tel: "ZEYNEPTEL")
                    //kisilerDao.guncelle(kisi_id: 16017, kisi_ad: "serhat", kisi_tel: "serhat")
                    //kisilerDao.sil(kisi_id: 16017)
                    kisilerDao.ara(aramaKelimesi: "hat")
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
