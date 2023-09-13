//
//  ContentView.swift
//  SofraSwfitUI
//
//  Created by FERDA OLKUN on 6.09.2023.
//

import SwiftUI
import UIKit
var detail: [DetailView] = DetailList.top2
var detail2: [KebapsDetailView] = KebapsDetailList.top2

struct ContentView: View {
    
    
    var body: some View {
        NavigationView{
            ZStack {
                Color("Bg")
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView() {
                    VStack(alignment: .leading){
                        AppBarView()
                        
                        TagLineView()
                            .padding( )
                        SearchAndScanView()
                        
                        
                        VStack(alignment:.leading, spacing: 0) {
                            HStack{
                                    ScrollView(.horizontal){
                                        NavigationLink(destination: SoupListView(), label: {
                                            Text("Soup")
                                                .font(.title3)
                                        })
                                        .navigationBarHidden(true)
                                    }
                                
                                    ScrollView(.horizontal){
                                    NavigationLink(destination: KebapListView(), label: {
                                        Text("Kebap")
                                            .font(.title3)
                                    })
                                    .navigationBarHidden(true)
                                    
                                }
                            }
                                    .foregroundColor(Color("primary"))
                                .padding()
                        }
                       
                        
                        
                        
                        Text("Popular Kebap Menu:")
                            .font(.title2)
                            .foregroundColor(Color("primary"))
                            .fontWeight(.bold)
                            .padding()
                        
                        HStack{
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack{
                                    ForEach(detail2, id:\.id ) { detail2 in
                                        NavigationLink(destination: KebapDetailView(detail2: detail2), label:{
                                            
                                            VStack{
                                                Image(detail2.imageName)
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 210, height: 150)
                                                    .cornerRadius(15)
                                                    .padding(.horizontal)
                                                
                                                Text(detail2.kebapName)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(Color.black)
                                                    .font(.title2)
                                                
                                                HStack(spacing:2){
                                                    ForEach(0 ..< 5) { item in
                                                        Image("star")
                                                    }
                                                    
                                                    Text(detail2.price)
                                                }   .fontWeight(.bold)
                                                    .foregroundColor(Color.black)
                                                    .font(.title2)
                                                    .padding(.trailing)
                                                
                                                
                                            }.background(Color.white)
                                                .cornerRadius(20)
                                        })
                                    }
                                }}
                            
                        }
                        
                        Text("Popular Soup Menu:")
                            .font(.title2)
                            .foregroundColor(Color("primary"))
                            .fontWeight(.bold)
                            .padding(.horizontal)
                        
                        
                        HStack{
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack{
                                    ForEach(detail, id:\.id ) { detail in
                                        NavigationLink(destination: SoupDetailView(detail: detail), label:{
                                            
                                            VStack{
                                                Image(detail.imageName)
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 210, height: 150)
                                                    .cornerRadius(15)
                                                    .padding(.horizontal)
                                                
                                                Text(detail.soupName)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(Color.black)
                                                    .font(.title2)
                                                
                                                HStack(spacing:2){
                                                    ForEach(0 ..< 5) { item in
                                                        Image("star")
                                                    }
                                                    
                                                    Text(detail.price)
                                                }   .fontWeight(.bold)
                                                    .foregroundColor(Color.black)
                                                    .font(.title2)
                                                    .padding(.trailing)
                                                
                                                
                                            }.background(Color.white)
                                                .cornerRadius(20)
                                        })
                                    }
                                }}
                        }
                    }
                }
            
                    HStack{
                        Button(action:{}) {
                            Image("home")
                                .frame(maxWidth: .infinity)
                            Button(action:{}) {
                                Image(systemName:"person.2.fill")
                                    .foregroundColor(Color("primary"))
                                
                            }
                    }
                }
                .padding()
                .background(Color.white)
                .clipShape(Capsule())
                .padding()
                
                
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct AppBarView: View {
    var body: some View {
        HStack{
            Button(action:{}) {
                Image(systemName: "slider.horizontal.3")
                    .font(.system(size: 30))
                    .foregroundColor(Color("primary"))
                    
            }
            Spacer()
            Button(action:{}){
                Image("profile")
                    .resizable()
                    .frame(width:42, height:42)
                    .cornerRadius(10)
            }
        }
        .padding(.horizontal)
    }
}
    
    struct TagLineView: View {
        var body: some View {
            Text("Find The \nBest")
                .font(.custom("PlayfairDisplay-Regular", size: 28))
                .foregroundColor(Color("primary"))
            + Text(" Food - Sofra!")
                .font(.custom("PlayfairDisplay-Regular", size: 28))
                .foregroundColor(Color("primary"))
            
        }
    }
    
    struct SearchAndScanView: View {
        @State private var search: String = ""
        var body: some View {
            HStack{
                HStack {
                    Image("search")
                        .padding(.trailing, 8)
                    TextField("Search Food", text: $search )
                }
                .padding(.all, 20)
                .background(Color.white)
                .cornerRadius(10)
                .padding(.trailing)
                
                Button(action:{}){
                    Image("scan")
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }
            }
            
            .padding(.horizontal)
        }
    }

