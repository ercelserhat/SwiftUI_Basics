//
//  ContentView.swift
//  FirebaseProject
//
//  Created by Serhat on 14.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("")
                .onAppear{
                    let kisilerDao = KisilerDao()
                    /*kisilerDao.kaydet(kisi_ad: "Serhat", kisi_yas: 31)
                    kisilerDao.kaydet(kisi_ad: "Ahmet", kisi_yas: 23)
                    kisilerDao.kaydet(kisi_ad: "Mehmet", kisi_yas: 35)
                    kisilerDao.kaydet(kisi_ad: "Zeynep", kisi_yas: 20)*/
                    
                    //kisilerDao.kisileriYukle()
                    
                    //kisilerDao.sil(key: "-NgjZyfos4Sf29ACggkJ")
                    
                    //kisilerDao.guncelle(key: "-NgjZyfos4Sf29ACggkI", kisi_ad: "Yeni İsim", kisi_yas: 23)
                    
                    //kisilerDao.equal()
                    
                    //kisilerDao.betweenValues()
                    
                    kisilerDao.limit()
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
