//
//  ContentView.swift
//  UserDefaults
//
//  Created by Serhat on 12.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sayac = 0
    
    var body: some View {
        VStack {
            Text("Uygulama Açılış Sayısı: \(sayac)").font(.system(size: 25))
                .onAppear(){
                    let ud = UserDefaults.standard
                    
                    //Sayaç uygulaması
                    var s = ud.integer(forKey: "sayac")
                    s += 1
                    ud.set(s, forKey: "sayac")
                    sayac = s
                    
                    //Kayıt
                    ud.set("Serhat", forKey: "ad")
                    ud.set(31, forKey: "yas")
                    ud.set(true, forKey: "evli")
                    
                    let liste  = ["ali", "ece"]
                    ud.set(liste, forKey: "liste")
                    
                    let sehirler = ["23" : "Elazığ", "06" : "Ankara", "34" : "İstanbul"]
                    ud.set(sehirler, forKey: "sehirler")
                    
                    //Silme
                    //ud.removeObject(forKey: "ad")
                    
                    //Okuma
                    let gelenAd = ud.string(forKey: "ad") ?? "isim yok"
                    let gelenYas = ud.integer(forKey: "yas")
                    let gelenEvlilik = ud.bool(forKey: "evli")
                    print("Gelen Ad: \(gelenAd)")
                    print("Gelen Yaş: \(gelenYas)")
                    print("Gelen Evlilik: \(gelenEvlilik)")
                    
                    let gelenListe = ud.array(forKey: "liste") ?? [String]()
                    for a in gelenListe{
                        print("Gelen Kişi: \(a)")
                    }
                    
                    let gelenSehirler = ud.dictionary(forKey: "sehirler") ?? [String : String]()
                    for (anahtar, deger) in gelenSehirler{
                        print("Gelen Şehir: \(anahtar) - \(deger)")
                    }
                    
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
