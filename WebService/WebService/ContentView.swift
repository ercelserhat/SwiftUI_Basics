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
                    kdao.kisileriYukle()
                    
                    kdao.kaydet(kisi_ad: "Serhat", kisi_tel: "7777777")
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
