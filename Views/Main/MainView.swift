//
//  MainView.swift
//  PracticeShuto
//
//  Created by Shuto Kurihara on 2026/01/07.
//

import SwiftUI

struct MainView: View {
    @State private var searchText: String = ""
    
    let coffees = [
        ("カプチーノ", "Cappucchino", 530, "cappucchino"),
        ("カフェラテ", "Latte", 530, "latte"),
        ("フラットホワイト", "Flat White", 530, "flatWhite"),
        ("エスプレッソ", "Espresso", 430, "espresso"),
        ("アメリカーノ", "Americano", 430, "americano"),
        ("抹茶ラテ", "Matcha", 530, "matcha")
    ]
    
    let columns : [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @State private var favorites: [Bool] = [false, false, false, false, false, false]
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("MainColor")
                    .ignoresSafeArea()
                
                VStack {
                    Text("Coffee Heaven")
                        .font(.title.bold())
                        .padding(.top, 30)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        TextField("Start your search", text: $searchText)
                    }
                    .padding(15)
                    .background(.white)
                    .cornerRadius(50)
                    .padding()
                    
                    VStack {
                        HStack {
                            Text("Coffee List")
                                .font(.title2.bold())
                                .padding(.horizontal)
                            Spacer()
                        }
                        ScrollView {
                                LazyVGrid(columns: columns, spacing: 20) {
                                    ForEach(coffees.indices, id: \.self) { index in
                                        CoffeeCardView(
                                            nameJP: coffees[index].0,
                                            nameEN: coffees[index].1,
                                            price: coffees[index].2,
                                            imageName: coffees[index].3,
                                            isFavorite: $favorites[index]
                                        )
                                    }
                                }
                            }
                        }
                    }
                    .padding()
                    Spacer()
                }
            }
        }
    }


#Preview {
    MainView()
}
