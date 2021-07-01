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
}

let colorSneakerData = [ColorSneaker(id: 0, color: .nikeYellow),
                     ColorSneaker(id: 1, color: .white),
                     ColorSneaker(id: 2, color: .nikeBlue)]
