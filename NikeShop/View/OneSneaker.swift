//
//  OneSneaker.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

struct OneSneaker: View {
    var width: CGFloat
    @Binding var select: Int
    
    var body: some View {
        colorSneakerData[select].image
            .resizable()
            .scaledToFit()
            .frame(width: width)
            .rotationEffect(.degrees(-30))
            .offset(x: -40)
            .shadow(color: .black.opacity(0.8), radius: 20, x: 10, y: 30)
    }
}

struct OneSneaker_Previews: PreviewProvider {
    static var previews: some View {
        OneSneaker(width: UIScreen.main.bounds.width, select: .constant(0))
    }
}
