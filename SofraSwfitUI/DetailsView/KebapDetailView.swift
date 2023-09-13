//
//  KebapDetailView.swift
//  SofraSwfitUI
//
//  Created by FERDA OLKUN on 9.09.2023.
//

import SwiftUI

struct KebapDetailView: View {
    var detail2: KebapsDetailView
    var body: some View {
        
            ZStack{
                Color("Bg")
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView{
                    VStack{
                        
                        Image(detail2.imageName)
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fit)
                        
                        
                        
                        VStack(alignment: .leading){
                            Text(detail2.kebapName)
                                .font(.title)
                                .fontWeight(.bold)
                            
                            
                            HStack(spacing: 4){
                                ForEach(0 ..< 5) { item in
                                    Image("star")
                                }
                                Text("(4.9)")
                                    .opacity(0.5)
                                    .padding(.leading, 8)
                                Spacer()
                            }
                            
                            Text("Description")
                                .font(.title2)
                                .fontWeight(.medium)
                                .padding(.vertical, 8)
                                .fontWeight(.bold)
                            Text(detail2.description)
                                .font(.title3)
                                .lineSpacing(8.0)
                                .opacity(0.6)
                            
                            HStack{
                                VStack(alignment: .leading){
                                    Text("Content")
                                        .fontWeight(.semibold)
                                    Text(detail2.content1)
                                        .opacity(0.6)
                                    Text(detail2.content2)
                                        .opacity(0.6)
                                    Text(detail2.content3)
                                        .opacity(0.6)
                                    
                                }
                            }
                            .padding(.vertical)
                            
                            VStack(alignment: .trailing){
                                Text("Quantity")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                
                                HStack(alignment: .bottom){
                                    Spacer()
                                    
                                    Button(action:{}) {
                                        Image(systemName: "minus")
                                            .padding(.all, 8)
                                    }
                                    .frame(width:30, height: 30)
                                    .overlay(RoundedRectangle(cornerRadius: 50).stroke())
                                    .foregroundColor(.black)
                                    
                                    Text("1")
                                        .font(.title2)
                                        .fontWeight(.semibold)
                                        .padding(.horizontal,8)
                                    
                                    Button(action:{}) {
                                        Image(systemName: "plus")
                                            .padding(.all, 8)
                                    }
                                    .frame(width:30, height: 30)
                                    .background(Color("primary"))
                                    .foregroundColor(.black)
                                    .clipShape(Circle())
                                    
                                }
                            }
                        }
                        .padding()
                        .padding(.top)
                        .background(Color("Bg"))
                        .cornerRadius(40.0)
                        .offset(y:-30)
                        
                    }
                    .edgesIgnoringSafeArea(.top)
                }
                HStack{
                    Text("$3")
                        .font(.title)
                        .foregroundColor(.white)
                    Spacer()
                    
                    Button(action: {}) {
                        Text("Add to Cart")
                            .padding()
                            .padding(.horizontal)
                            .background(Color.white)
                            .cornerRadius(10)
                    }
                }
                .padding()
                .background(Color("primary"))
                .cornerRadius(50, corners: .topLeft)
                .frame(maxHeight: .infinity, alignment: .bottom)
                .foregroundColor(Color("primary"))
                .cornerRadius(8.0)
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }

