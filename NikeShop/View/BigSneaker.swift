//
//  BigSneaker.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

struct BigSneaker: View {
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Spacer()
                Text("NIKE AIR")
                    .foregroundColor(.white)
                    .font(.system(size: 80).bold())
                Spacer()
            }
            Image("airJordanOneMid")
                .resizable()
                .scaledToFit()
                .frame(width: getRect().width)
                .rotationEffect(.degrees(-30))
                .offset(x: -40)
                .shadow(color: .black.opacity(0.8), radius: 20, x: 10, y: 30)
        }
        .offset(y: -30)
//        .background(Color.nikeBlack)
//        .frame(height: getRect().height / 2)
    }
}

struct BigSneaker_Previews: PreviewProvider {
    static var previews: some View {
        BigSneaker()
    }
}
