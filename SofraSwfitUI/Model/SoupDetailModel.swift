//
//  SoupDetailModel.swift
//  SofraSwfitUI
//
//  Created by FERDA OLKUN on 6.09.2023.
//



import SwiftUI

struct DetailView : Identifiable {
    let id = UUID()
    let imageName: String
    let soupName: String
    let description: String
    let content1: String
    let content2: String
    let content3: String
    let price: String
}

struct DetailList{
    static let top2 = [
        
    DetailView(imageName: "creemofchicken", soupName: "Cream of Chicken", description: "This homemade Cream of Chicken Soup recipe is an easy substitute for condensed soup. ", content1: "chicken", content2: "cream", content3: "mint", price: "$4"),
    
    DetailView(imageName: "redlentilsoup", soupName: "Red lentil Soup", description: "This is a lentil soup that defies expectations of what lentil soup can be. Based on a Turkish lentil soup.", content1: "garlic in oil", content2: "lemon", content3: "red lentils", price: "$4"),
    
    DetailView(imageName: "tomatosoup", soupName: "Tomato Soup", description: "Tomato soup is a soup with tomatoes as the primary ingredient. It can be served hot or cold, and may be made in a variety of ways", content1: "tomato", content2: "cream", content3: "chicken", price: "$3"),
    
    DetailView(imageName: "yogurtsoup", soupName: "Yogurt Soup", description: "Turkish yogurt soup known as Yayla Corbasi is the perfect option for a light meal. This warm yogurt soup is simple, healthy, and naturally vegetarian.", content1: "yogurt", content2: "mint", content3: "rice", price: "$3"),
    
    DetailView(imageName: "jelly", soupName: "Sour Soup", description: "This restaurant-style Hot and Sour Soup recipe is the best!! It’s quick and simple to order, easy to adapt to your personal taste preferences, and so delicious.", content1: "Beef", content2: "Yogurt", content3: "Butter", price: "$4")
    
    
    ]
}



struct SoupDetailModel: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SoupDetailModel_Previews: PreviewProvider {
    static var previews: some View {
        SoupDetailModel()
    }
}
