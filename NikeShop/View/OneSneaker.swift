//
//  OneSneaker.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

struct OneSneaker: View {
    var width: CGFloat
    var sneaker: Sneaker
    @Binding var select: Int
    
    var body: some View {
        VStack {
            sneaker.image
                .resizable()
                .scaledToFit()
                .rotationEffect(.degrees(select == sneaker.id ? -30 : -20))
                .offset(x: -40)
                .shadow(color: .black.opacity(0.8), radius: 20, x: 20, y: 10)
                .animation(.easeInOut)
        }
        .frame(width: width, height: width)
//        .background(Color.nikeYellow)
    }
}

struct OneSneaker_Previews: PreviewProvider {
    static var previews: some View {
        let sneaker = sneakersData[0]
        OneSneaker(width: UIScreen.main.bounds.width, sneaker: sneaker, select: .constant(0))
    }
}
