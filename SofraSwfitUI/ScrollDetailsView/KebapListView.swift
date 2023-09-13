//
//  KebapListView.swift
//  SofraSwfitUI
//
//  Created by FERDA OLKUN on 9.09.2023.
//

import SwiftUI

struct KebapListView: View {
    var kebap: [KebapsDetailView] = KebapsDetailList.top2
    
    var body: some View {
        NavigationView{
            List(kebap, id:\.id){ detail2 in
                NavigationLink(destination: KebapDetailView(detail2: detail2), label: {
                    
                    Image(detail2.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height:80)
                        .cornerRadius(4)
                        .padding(.vertical, 5)
                    
                    VStack(){
                        Text(detail2.kebapName)
                            .fontWeight(.semibold)
                            .lineLimit(2)
                            .minimumScaleFactor(0.5)
                        
                 
                        
                    }
                })
            }
            .navigationTitle("Kebap Menu")
        }
    }
}

struct KebapListView_Previews: PreviewProvider {
    static var previews: some View {
        KebapListView()
    }
}
