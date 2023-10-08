//
//  SonucEkrani.swift
//  GuessTheNumber
//
//  Created by Serhat on 8.10.2023.
//

import SwiftUI

struct SonucEkrani: View {
    
    var sonuc = false
    
    var body: some View {
        VStack(spacing: 100){
            if sonuc{
                Text("Kazandınız").font(.system(size: 30))
                Image("mutlu").resizable().frame(width: 100, height: 100)
            }else{
                Text("Kaybettiniz").font(.system(size: 30))
                Image("uzgun").resizable().frame(width: 100, height: 100)
            }
            
            
        }
    }
}

#Preview {
    SonucEkrani()
}
