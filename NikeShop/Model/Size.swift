//
//  SizeModel.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import Foundation

struct Size: Identifiable {
    var id: Int
    var number: String
    var inStock: Bool
}

let sizeData = [Size(id: 0, number: "7", inStock: true),
                Size(id: 1, number: "7.5", inStock: true),
                Size(id: 2, number: "8", inStock: true),
                Size(id: 3, number: "8.5", inStock: false),
                Size(id: 4, number: "9", inStock: true),
                Size(id: 5, number: "9.5", inStock: true),
                Size(id: 6, number: "10", inStock: false),
                Size(id: 7, number: "11", inStock: true)]
