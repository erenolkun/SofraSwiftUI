//
//  SoupListView.swift
//  SofraSwfitUI
//
//  Created by FERDA OLKUN on 6.09.2023.
//

import SwiftUI

struct SoupListView: View {
    
    var soup: [DetailView] = DetailList.top2
    
    var body: some View {
        NavigationView{
            List(soup, id:\.id){ detail in
                NavigationLink(destination: SoupDetailView(detail: detail), label: {
                    
                    Image(detail.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height:80)
                        .cornerRadius(4)
                        .padding(.vertical, 5)
                    
                    VStack(){
                        Text(detail.soupName)
                            .fontWeight(.semibold)
                            .lineLimit(2)
                            .minimumScaleFactor(0.5)
                
                        
                    }
                })
            }
            .navigationTitle("Soup Menu")
        }
    }
}

struct SoupListView_Previews: PreviewProvider {
    static var previews: some View {
        SoupListView()
    }
}
