//
//  KisiKayitViewModel.swift
//  PhoneBook
//
//  Created by Serhat on 12.10.2023.
//

import Foundation
import CoreData

class KisiKayitViewModel{
    
    let context = persistentContainer.viewContext
    
    func kaydet(kisi_ad: String, kisi_tel: String){
        let kisi = KisilerModel(context: context)
        kisi.kisi_ad = kisi_ad
        kisi.kisi_tel = kisi_tel
        saveContext()
    }
}
