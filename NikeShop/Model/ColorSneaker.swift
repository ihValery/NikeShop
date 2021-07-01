//
//  ColorSneaker.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

struct ColorSneaker: Identifiable {
    var id: Int
    var color: Color
    var image: Image
}

let colorSneakerData = [ColorSneaker(id: 0, color: .nikeYellow, image: Image("airJordanOneMidYellow")),
                        ColorSneaker(id: 1, color: .white, image: Image("airJordanOneMidWhite")),
                        ColorSneaker(id: 2, color: .nikeBlue, image: Image("airJordanOneMidBlue"))]
