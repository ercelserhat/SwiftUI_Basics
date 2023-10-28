//
//  Card.swift
//  ParallaxCarousel
//
//  Created by Serhat on 28.10.2023.
//

import Foundation

struct Card: Identifiable{
    let id = UUID().uuidString
    let title: String
    let subTitle: String
    let image: String
    
    static let cards: [Card] = [
        Card(title: "France", subTitle: "Paris", image: "1"),
        Card(title: "Germany", subTitle: "Stuttgart", image: "2"),
        Card(title: "India", subTitle: "Meghalaya", image: "3"),
        Card(title: "Japan", subTitle: "Ishikari", image: "4"),
        Card(title: "Thailand", subTitle: "In Sky", image: "5")
    ]
}
