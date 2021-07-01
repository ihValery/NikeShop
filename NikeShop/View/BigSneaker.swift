//
//  BigSneaker.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

struct BigSneaker: View {
    var sneaker: Sneaker
    @Binding var selectColor: Int

    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Spacer()
                Text("NIKE AIR")
                    .foregroundColor(.white)
                    .font(.system(size: 80))
                    .fontWeight(.bold)
                Spacer()
            }
            GeometryReader { gr in
                Carousel(width: getRect().width, height: gr.frame(in: .global).height, page: $selectColor)
            }
        }
    }
}

struct BigSneaker_Previews: PreviewProvider {
    static var previews: some View {
        let sneaker = sneakersData[1]
        BigSneaker(sneaker: sneaker, selectColor: .constant(0))
    }
}
