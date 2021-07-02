//
//  OneSneaker.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

struct OneSneaker: View {
    var sneaker: Sneaker
    @Binding var page: Int
    
    var body: some View {
        VStack {
            sneaker.image
                .resizable()
                .scaledToFit()
                .rotationEffect(.degrees(page == sneaker.id ? -30 : -20))
                .offset(x: -40)
                .shadow(color: .black.opacity(0.8), radius: 20, x: 20, y: 10)
                .animation(.easeInOut)
        }
        .frame(width: getRect().width, height: getRect().width)
//        .background(Color.nikeYellow)
    }
}

struct OneSneaker_Previews: PreviewProvider {
    static var previews: some View {
        let sneaker = sneakersData[0]
        OneSneaker(sneaker: sneaker, page: .constant(0))
    }
}
