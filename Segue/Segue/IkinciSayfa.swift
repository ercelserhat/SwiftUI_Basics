//
//  IkinciSayfa.swift
//  Segue
//
//  Created by Serhat on 7.10.2023.
//

import SwiftUI

struct IkinciSayfa: View {
    
    @Environment(\.presentationMode) var pm
    
    @State private var ucuncuEkranaGecis = false
    
    var body: some View {
        VStack(spacing: 50){
            Button("Üçüncü Sayfaya Git"){
                ucuncuEkranaGecis = true
            }
            Button("Geri"){
                pm.wrappedValue.dismiss()
            }
        }.navigationTitle("İkinci Sayfa")
            .sheet(isPresented: $ucuncuEkranaGecis){
                UcuncuSayfa()
            }
    }
}

#Preview {
    IkinciSayfa()
}
