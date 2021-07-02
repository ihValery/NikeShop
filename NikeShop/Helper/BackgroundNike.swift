//
//  BackgroundNike.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

struct BackgroundNike: View {
    @Binding var showDetail: Bool
    
    var body: some View {
        ZStack {
            Color.nikeBlack
            
            Circle().fill(Color.nikeYellow)
                .frame(width: 500, height: 500)
                .offset(x: showDetail ? getRect().width / 2 - 20 : getRect().width * 3,
                        y: showDetail ? -(getRect().height / 2) + 150 : -getRect().height)
                .animation(.easeInOut.speed(0.5))
        }
//        .frame(width: getRect().width, height: getRect().height)
        .ignoresSafeArea()
    }
}

struct BackgroundNike_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundNike(showDetail: .constant(true))
    }
}
