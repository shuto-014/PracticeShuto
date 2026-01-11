//
//  CoffeeDetailView.swift
//  PracticeShuto
//
//  Created by Shuto Kurihara on 2026/01/09.
//

import SwiftUI

struct CoffeeDetailView: View {
    let coffee: Coffee
    
    var body: some View {
        VStack {
            ZStack {
                Image(coffee.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 362)
                    .frame(maxWidth: .infinity)
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("coffee.nameJP")
                        .foregroundStyle(Color.white)
                        .font(.title.bold())
                    Text("coffee.nameEN")
                        .foregroundStyle(Color.white)
                        .font(.title2.bold())
                }
            }
            VStack {
                Text("Coffee Size")
                
            }
            Spacer()
        }
    }
}

#Preview {
    CoffeeDetailView(coffee: Coffee(
        nameJP: "フラットホワイト",
        nameEN: "Flat White",
        price: 530,
        imageName: "flatWhite",
        isFavorite: false
    ))
}
