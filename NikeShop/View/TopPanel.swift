//
//  TopPanel.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

struct TopPanel: View {
    @State private var isOn = false
    
    var body: some View {
        HStack {
            Image(systemName: "chevron.backward.square.fill")
                .font(.system(size: 40))
            Spacer()
            
            Image(systemName: "heart.fill")
                .foregroundColor(isOn ? .nikeBlack : .white)
                .font(isOn ? .largeTitle : .title)
                .frame(width: 40, height: 40)
                .onTapGesture {
                    withAnimation(.spring(dampingFraction: 0.5)) {
                        isOn.toggle()
                    }
                }
        }
        .padding(.horizontal, 20)
        .foregroundColor(.white)
    }
}
