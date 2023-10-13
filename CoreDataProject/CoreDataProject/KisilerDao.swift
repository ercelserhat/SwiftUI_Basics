//
//  KisilerDao.swift
//  CoreDataProject
//
//  Created by Serhat on 13.10.2023.
//

import Foundation
import CoreData

class KisilerDao{
    let context = persistentContainer.viewContext
    
    func kaydet(kisi_ad: String, kisi_tel: String){
        let kisi = Kisiler(context: context)
        kisi.kisi_ad = kisi_ad
        kisi.kisi_tel = kisi_tel
        saveContext()
    }
}
