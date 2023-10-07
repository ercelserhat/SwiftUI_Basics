//
//  IkinciSayfa.swift
//  Segue
//
//  Created by Serhat on 7.10.2023.
//

import SwiftUI

struct IkinciSayfa: View {
    
    @Environment(\.presentationMode) var pm
    
    var body: some View {
        VStack(spacing: 50){
            Button("Üçüncü Sayfaya Git"){
                
            }
            Button("Geri"){
                pm.wrappedValue.dismiss()
            }
        }.navigationTitle("İkinci Sayfa")
    }
}

#Preview {
    IkinciSayfa()
}
