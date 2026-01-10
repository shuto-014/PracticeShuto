//
//  RootView.swift
//  PracticeShuto
//
//  Created by Shuto Kurihara on 2026/01/07.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        ZStack {
            Image("cafeTop")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        }
    }
}

#Preview {
    RootView()
}

