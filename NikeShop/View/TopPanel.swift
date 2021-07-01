//
//  TopPanel.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

struct TopPanel: View {
    var body: some View {
        HStack {
            Image(systemName: "chevron.backward.square.fill")
                .font(.system(size: 40))
            Spacer()
            Image(systemName: "heart.fill")
                .font(.system(size: 20))

        }
        .padding(.horizontal, 20)
        .foregroundColor(.white)
    }
}
