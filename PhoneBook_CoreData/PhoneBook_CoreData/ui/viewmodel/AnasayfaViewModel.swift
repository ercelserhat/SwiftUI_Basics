//
//  AnasayfaViewModel.swift
//  PhoneBook
//
//  Created by Serhat on 12.10.2023.
//

import Foundation
import CoreData

class AnasayfaViewModel: ObservableObject{
    
    @Published var kisilerListesi = [KisilerModel]()
    let context = persistentContainer.viewContext
    
    func kisileriYukle(){
        do{
            let liste = try context.fetch(KisilerModel.fetchRequest())
            kisilerListesi = liste
        }catch{
            print(error.localizedDescription)
        }
    }
    
    func ara(aramaKelimesi: String){
        do{
            let fr = KisilerModel.fetchRequest()
            fr.predicate = NSPredicate(format: "kisi_ad CONTAINS[c] %@", aramaKelimesi)
            let liste = try context.fetch(fr)
            kisilerListesi = liste
        }catch{
            print(error.localizedDescription)
        }
    }
    
    func sil(kisi: KisilerModel){
        context.delete(kisi)
        saveContext()
        kisileriYukle()
    }
}
