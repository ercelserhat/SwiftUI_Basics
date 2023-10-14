//
//  YemekDetay.swift
//  RecipesApp
//
//  Created by Serhat on 11.10.2023.
//

import SwiftUI

struct YemekDetay: View {
    
    var yemek = Yemekler()
    
    var body: some View {
        VStack(spacing: 100){
            AsyncImage(url: URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/\(yemek.yemek_resim_adi!)")){ image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            Text("\(yemek.yemek_fiyat!) ₺").font(.system(size: 50)).foregroundStyle(.blue)
            Button("Sipariş Ver"){
                print("\(yemek.yemek_adi!) sipariş verildi.")
            }
            .foregroundStyle(.white)
            .frame(width: 250, height: 50)
            .background(.blue)
            .cornerRadius(10)
        }.navigationTitle(yemek.yemek_adi!)
    }
}

#Preview {
    YemekDetay()
}
