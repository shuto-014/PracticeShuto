//
//  CoffeeCardView.swift
//  PracticeShuto
//
//  Created by Shuto Kurihara on 2026/01/10.
//

import SwiftUI

struct CoffeeCardView: View {
    @Binding var coffee: Coffee
    
    var body: some View {
            ZStack {
                Color("card")
                    .frame(width: 170, height: 196)
                    .cornerRadius(15)
                    .shadow(color: .black.opacity(0.3), radius: 5, x: 5, y: 5)
                
                VStack(alignment: .leading) {
                    ZStack (alignment: .topTrailing){
                        Image(coffee.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 135)
                            .cornerRadius(15)
                            .padding(.bottom, 10)
                        
                        Button {
                            coffee.isFavorite.toggle()
                        } label: {
                            Image(systemName: coffee.isFavorite ? "heart.fill" : "heart")
                                .font(.system(size: 25))
                                .foregroundStyle(.pink)
                        }
                        .padding(.top, 5)
                        .padding(.trailing, 3)
                    }
                    Text(coffee.nameJP)
                        .font(.subheadline.bold())
                        .lineLimit(1)
                    HStack(alignment: .firstTextBaseline) {
                        Text(coffee.nameEN)
                            .font(.caption)
                            .foregroundStyle(.gray)
                        
                        Spacer()
                        
                        Text("¥ \(coffee.price)")
                            .font(.caption)
                            .padding(.leading)
                    }
                }
                .frame(width: 150)
            }
        }
    }


#Preview {
    CoffeeCardView(
        coffee: .constant(
            Coffee(
                nameJP: "フラットホワイト",
                nameEN: "Cappucchino",
                price: 530,
                imageName: "cappucchino",
                isFavorite: false
            )
        )
    )
}
