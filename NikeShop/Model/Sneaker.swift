//
//  Sneaker.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

struct Sneaker: Identifiable {
    var id: Int
    var name: String
    var color: Color
    var image: Image
    var price: Int
}

let sneakersData = [Sneaker(id: 0, name: "AIR JORDAN 1 MID SE GC", color: .nikeYellow, image: Image("airJordanOneMidYellow"), price: 856),
                    Sneaker(id: 1, name: "AIR JORDAN 1 MID SE GW", color: .white, image: Image("airJordanOneMidWhite"), price: 766),
                    Sneaker(id: 2, name: "AIR JORDAN 1 MID SE GB", color: .nikeBlue, image: Image("airJordanOneMidBlue"), price: 813)]
