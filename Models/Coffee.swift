//
//  Coffee.swift
//  PracticeShuto
//
//  Created by Shuto Kurihara on 2026/01/10.
//

import Foundation

struct Coffee: Identifiable {
    let id = UUID()
    let nameJP: String
    let nameEN: String
    let price: Int
    let imageName: String
    var isFavorite: Bool
}

