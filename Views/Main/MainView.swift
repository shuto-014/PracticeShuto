//
//  MainView.swift
//  PracticeShuto
//
//  Created by Shuto Kurihara on 2026/01/07.
//

import SwiftUI

struct MainView: View {
    @State private var searchText: String = ""
    
    let columns : [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @State private var coffees: [Coffee] = [
        Coffee(
            nameJP: "カプチーノ",
            nameEN: "Cappucchino",
            price: 530,
            imageName: "cappucchino",
            isFavorite: false
        ),
        Coffee(
            nameJP: "カフェラテ",
            nameEN: "Latte",
            price: 530,
            imageName: "latte",
            isFavorite: false
        ),
        Coffee(
            nameJP: "フラットホワイト",
            nameEN: "Flat White",
            price: 530,
            imageName: "flatWhite",
            isFavorite: false
        ),
        Coffee(
            nameJP: "エスプレッソ",
            nameEN: "Espresso",
            price: 530,
            imageName: "espresso",
            isFavorite: false
        ),
        Coffee(
            nameJP: "アメリカーノ",
            nameEN: "Americano",
            price: 530,
            imageName: "americano",
            isFavorite: false
        ),
        Coffee(
            nameJP: "抹茶ラテ",
            nameEN: "Matcha Latte",
            price: 530,
            imageName: "matcha",
            isFavorite: false
        )
    ]
    
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
                                ForEach($coffees) { $coffee in
                                    NavigationLink {
                                        CoffeeDetailView(coffee: coffee)
                                    } label: {
                                        CoffeeCardView(coffee: $coffee)
                                    }
                                    .buttonStyle(PlainButtonStyle())
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
