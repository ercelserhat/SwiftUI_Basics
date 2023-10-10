//
//  UlkeDetayPage.swift
//  Lists
//
//  Created by Serhat on 10.10.2023.
//

import SwiftUI

struct UlkeDetayPage: View {
    
    var ulke = Ulkeler()
    
    var body: some View {
        Text(ulke.ad!).font(.system(size: 35))
    }
}

#Preview {
    UlkeDetayPage()
}
