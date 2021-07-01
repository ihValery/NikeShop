//
//  PageIndicator.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

struct PageIndicator: View {
    var body: some View {
        HStack {
            Spacer()
            
            RoundedRectangle(cornerRadius: 100)
                .fill(Color.white)
                .frame(width: 20, height: 5)
            
            Circle()
                .fill(Color.gray)
                .frame(width: 5, height: 5)
            Circle()
                .fill(Color.gray)
                .frame(width: 5, height: 5)
            
            Spacer()
        }
    }
}
