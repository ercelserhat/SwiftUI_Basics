//
//  ContentView.swift
//  WebService
//
//  Created by Serhat on 14.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("")
                .onAppear(){
                    let kdao = KisilerDao()
                    
                    //kdao.kisileriYukle()
                    
                    //kdao.kaydet(kisi_ad: "Serhat", kisi_tel: "7777777")
                    
                    kdao.guncelle(kisi_id: 16005, kisi_ad: "SERHAT", kisi_tel: "123456789")
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
