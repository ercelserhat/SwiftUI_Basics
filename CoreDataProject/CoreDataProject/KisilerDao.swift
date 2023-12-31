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
    
    func tumKisiler(){
        do{
            let liste = try context.fetch(Kisiler.fetchRequest())
            for k in liste{
                print("---------------------")
                print("Kişi Ad: \(k.kisi_ad!)")
                print("Kişi Tel: \(k.kisi_tel!)")
            }
        }catch{
            print(error.localizedDescription)
        }
    }
    
    func ara(aramaKelimesi: String){
        do{
            let fr = Kisiler.fetchRequest()
            fr.predicate = NSPredicate(format: "kisi_ad CONTAINS[c] %@", aramaKelimesi)
            let liste = try context.fetch(fr)
            
            for k in liste{
                print("---------------------")
                print("Kişi Ad: \(k.kisi_ad!)")
                print("Kişi Tel: \(k.kisi_tel!)")
            }
        }catch{
            print(error.localizedDescription)
        }
    }
    
    func getir(kisi_ad: String){
        do{
            let fr = Kisiler.fetchRequest()
            fr.predicate = NSPredicate(format: "kisi_ad == %@", kisi_ad)
            let liste = try context.fetch(fr)
            
            for k in liste{
                print("---------------------")
                print("Kişi Ad: \(k.kisi_ad!)")
                print("Kişi Tel: \(k.kisi_tel!)")
            }
        }catch{
            print(error.localizedDescription)
        }
    }
    
    func kontrol(kisi_ad: String){
        do{
            let fr = Kisiler.fetchRequest()
            fr.predicate = NSPredicate(format: "kisi_ad == %@", kisi_ad)
            
            let sonuc = try context.count(for: fr)
            print("Sonuç : \(sonuc)")
        }catch{
            print(error.localizedDescription)
        }
    }
}
