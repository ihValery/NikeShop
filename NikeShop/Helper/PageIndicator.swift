//
//  PageIndicator.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

struct PageIndicator: View {
    var colorSize: Sneaker
    @Binding var select: Int
    
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 100)
                .fill(select == colorSize.id ? Color.white : Color.gray)
                .frame(width: select == colorSize.id ? 20 : 5, height: 5)
                .animation(.easeInOut)
        }
    }
}
