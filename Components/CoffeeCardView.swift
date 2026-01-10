//
//  CoffeeCardView.swift
//  PracticeShuto
//
//  Created by Shuto Kurihara on 2026/01/10.
//

import SwiftUI

struct CoffeeCardView: View {
    let nameJP: String
    let nameEN: String
    let price: Int
    let imageName: String
    @Binding var isFavorite: Bool
    
    var body: some View {
        HStack {
            ZStack {
                Color("card")
                    .frame(width: 170, height: 196)
                    .cornerRadius(15)
                    .shadow(color: .black.opacity(0.3), radius: 5, x: 5, y: 5)
                
                VStack {
                    ZStack (alignment: .topTrailing){
                        Image(imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 135)
                            .cornerRadius(15)
                            .padding(.bottom, 10)
                        Button {
                            isFavorite.toggle()
                        } label: {
                            Image(systemName: isFavorite ? "heart.fill" : "heart")
                                .font(.system(size: 25))
                                .foregroundStyle(.pink)
                        }
                        .padding(.top, 5)
                        .padding(.trailing, 3)
                    }
                    
                    HStack(alignment: .top) {
                        VStack(alignment: .leading) {
                            Text(nameJP)
                                .font(.system(size: 14).bold())
                            Text(nameEN)
                                .font(.system(size: 12))
                                .foregroundStyle(.gray)
                        }
                        Text("¥ \(price)")
                            .font(.system(size: 12))
                            .padding(.leading)
                    }
                }
                
            }
            .frame(maxWidth: .infinity)
            .frame(height: 196)
        }
    }
}

#Preview {
    CoffeeCardView(
        nameJP: "カプチーノ",
        nameEN: "Cappucchino",
        price: 530,
        imageName: "cappucchino",
        isFavorite: .constant(false)
    )
}
