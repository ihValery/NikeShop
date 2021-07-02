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
    @Binding var showDetail: Bool
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Spacer()
                Text("NIKE AIR")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.system(size: 80))
                    .animation(.linear)
                Spacer()
            }
            .opacity(showDetail ? 1 : 0)
            
            Carousel(width: getRect().width, page: $selectColor)
        }
    }
}

struct BigSneaker_Previews: PreviewProvider {
    static var previews: some View {
        let sneaker = sneakersData[1]
        BigSneaker(sneaker: sneaker, selectColor: .constant(0), showDetail: .constant(true))
    }
}
