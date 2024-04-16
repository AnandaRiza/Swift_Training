//
//  Food.swift
//  FoodApp
//
//  Created by MACBOOK PRO on 16/04/24.
//

import Foundation

struct Food: Identifiable{
    let id = UUID()
    let image: String
    let category: [String]
    let heading: String
    let chef: String
    let location: String
}


// MARK : - DUMMY DATA
extension Food {
    static let foodData : [Food] = [
        Food(image: "carbonara", category: ["Dine In", "Take Away", "Delivery"], heading: "Creamy", chef: "Luigy", location: "San Torino Speciale")
        
    ,
    
    
        Food(image: "friedrice", category: ["Delivery"], heading: "Spicy Fried Rice", chef: "Ibu Markonah", location: "Warteg Bahari")
        ,
    
    
        Food(image: "mieayam", category: ["Take Away", "Delivery"], heading: "Greatest Noodle in Jakarta Barat", chef: "Aciong", location: "Bakmie Spesial Koh Aciong")
        ,
    
    
        Food(image: "salmonsteak", category: ["Dine In", "Take Away"], heading: "Tender Citrus Salmon Steak", chef: "Salman Al - Katari", location: "Fish&Co.")
        ]
}

