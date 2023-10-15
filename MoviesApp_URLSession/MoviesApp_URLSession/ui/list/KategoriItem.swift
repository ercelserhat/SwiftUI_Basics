//
//  KategoriItem.swift
//  MoviesApp
//
//  Created by Serhat on 12.10.2023.
//

import SwiftUI

struct KategoriItem: View {
    
    var kategori = Kategoriler()
    
    var body: some View {
        Text(kategori.kategori_ad!)
    }
}

#Preview {
    KategoriItem()
}
