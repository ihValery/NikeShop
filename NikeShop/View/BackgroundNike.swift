//
//  BackgroundNike.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

struct BackgroundNike: View {
    var body: some View {
        ZStack {
            Color.nikeBlack
            
            Circle().fill(Color.nikeYellow)
                .frame(width: 500, height: 500)
                .offset(x: getRect().width / 2 - 20, y: -(getRect().height / 2) + 150)
        }
//        .frame(width: getRect().width, height: getRect().height)
        .ignoresSafeArea()
    }
}

struct BackgroundNike_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundNike()
    }
}
