//
//  DetailScreen.swift
//  Furniture_app
//
//  Created by Berke Ayar on 8.05.2024.
//

import SwiftUI

struct DetailScreen: View {
    var body: some View {
        ZStack {
            Color("Bg")
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                Image("chair_1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .edgesIgnoringSafeArea(.top)
                
                DescriptionView()
                    .offset(y: -40)
            }
            
            HStack{
                Text("1300 TL")
                    .font(.title)
                    .foregroundColor(.white)
                Spacer()
                
                Button(action: {}, label: {
                    Text("Sepet'e Ekle")
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10.0)
                        .foregroundColor(Color("Primary"))
                })
            }
            .padding()
            .padding(.horizontal)
            .background(Color("Primary"))
            .frame(maxHeight: .infinity, alignment: .bottom)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}


struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen()
    }
}

struct DescriptionView: View {
    var body: some View {
        VStack (alignment: .leading){
            Text("Lüks İsveç \nSandalyesi")
                .font(.title)
                .fontWeight(.bold)
            
            HStack (spacing: 4) {
                ForEach(0 ..< 5) { item in
                    Image("star")
                }
                Text("(4.9)")
                    .opacity(0.5)
                    .padding(.leading, 8)
                Spacer()
            }
            Text("Ürün Açıklaması")
                .fontWeight(.medium)
                .padding(.vertical, 8)
            
            Text("İsveç Sandalyesi, zarif tasarımıyla dikkat çeken bir mobilya parçasıdır. 1950'lerde ortaya çıkan bu ikonik sandalye, minimalizm ve işlevselliği mükammel bir şekilde bir araya getirir.")
                .lineSpacing(8.0)
                .opacity(0.6)
            
            HStack (alignment: .top){
                VStack (alignment: .leading){
                    Text("Boyut")
                        .fontWeight(.semibold)
                        .padding(.bottom, 4)
                    Text("Yüksekliği: 120 cm")
                        .opacity(0.6)
                    Text("Genişliği: 80 cm")
                        .opacity(0.6)
                    Text("Çap: 72 cm")
                        .opacity(0.6)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack (alignment: .leading){
                    Text("İşlem")
                        .fontWeight(.semibold)
                        .padding(.bottom, 4)
                    
                    Text("Jati Odunu, Kanvas")
                        .opacity(0.6)
                }
                .frame(maxWidth: .infinity)
            }
            .padding(.vertical)
            
            HStack (alignment: .bottom){
                VStack {
                    Text("Renk Seçenği")
                        .fontWeight(.semibold)
                    
                    HStack {
                        ColorDotView(color: .white)
                        ColorDotView(color: .blue)
                        ColorDotView(color: .black)
                    }
                }
                
                Spacer()
                
                VStack (alignment: .leading){
                    Text("Adet")
                        .fontWeight(.semibold)
                    HStack{
                        Button(action: {}) {
                            Image(systemName: "minus")
                                .padding(.all, 8)
                        }
                        .frame(width: 30, height: 30)
                        .overlay(RoundedRectangle(cornerRadius: 50).stroke())
                        .foregroundColor(.black) // Corrected typo here
                        
                        Text("1")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.horizontal, 8)
                        
                        Button(action: {}) {
                            Image(systemName: "plus")
                                .padding(.all, 8)
                        }
                        .frame(width: 30, height: 30)
                        .background(Color("Primary"))
                        .clipShape(Circle())
                        .foregroundColor(.black) // Corrected typo here
                    }
                }
            }
        }
        .padding()
        .padding(.top)
        .background(Color("Bg"))
        .cornerRadius(40.0)
    }
}

struct ColorDotView: View {
    let color: Color
    var body: some View {
        color
            .frame(width: 24, height: 24)
            .clipShape(Circle())
    }
}


