//
//  KisilerDao.swift
//  FirebaseProject
//
//  Created by Serhat on 14.10.2023.
//

import Foundation
import Firebase

class KisilerDao{
    //Firebase Reference Point
    var resKisiler = Database.database().reference().child("kisiler")
}
