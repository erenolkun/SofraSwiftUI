//
//  KebapDetailModel.swift
//  SofraSwfitUI
//
//  Created by FERDA OLKUN on 9.09.2023.
//

import SwiftUI

struct KebapsDetailView : Identifiable {
    let id = UUID()
    let imageName: String
    let kebapName: String
    let description: String
    let content1: String
    let content2: String
    let content3: String
    let price: String
}

struct KebapsDetailList{
    static let top2 = [
        
        KebapsDetailView(imageName: "meatballs", kebapName: "Köfte", description: "The most common form of the dish is Izgara Köfte, grilled köfte, usually garnished with sliced onions, chopped parsley and a sprinkle of paprika, and served with yogurt and a pile of fresh Turkish sourdough bread.", content1: "lamb", content2: "onion", content3: "rice", price: "$7"),
    
    KebapsDetailView(imageName: "adanakebap", kebapName: "Adana Kebap", description: "Adana kebap with bulgur wheat, crudités, tomatoes, peppers, onions and parsley.", content1: "lamb", content2: "bulgur", content3: "onion", price: "$7"),
    
    KebapsDetailView(imageName: "copsis", kebapName: "Çöp Şiş", description: "CHURP sheesh is three or four little chunks of lamb, and a chunk of fat, grilled on a small wooden skewer: a specialty of the Aegean region, especially south of Izmir", content1: "lamb or chicken", content2: "tomato", content3: "onion", price: "$7"),
    
    KebapsDetailView(imageName: "iskenderkebap", kebapName: "İskender Kebap", description: "Iskender kebab is one of the famous kebab dishes from the Bursa region. It originated in 1867 in Kayhan Bazaar. While its main ingredient is actually döner meat, what makes Iskender unique is the butter on top, tomato sauce, yogurt on the side, and the pieces of oily pita bread underneath.", content1: "lamb", content2: "tomato", content3: "butter", price: "$7"),
    
    KebapsDetailView(imageName: "tokatkebabi", kebapName: "Tokat Kebabı", description: "made using fresh lamb meat, tail fat, eggplant, tomatoes, green peppers, potatoes, onions, garlic, and specially prepared kebab pita.", content1: "lamb", content2: "tomato", content3: "garlic", price: "$7")
    
    
    ]
}


struct KebapDetailModel: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct KebapDetailModel_Previews: PreviewProvider {
    static var previews: some View {
        KebapDetailModel()
    }
}
