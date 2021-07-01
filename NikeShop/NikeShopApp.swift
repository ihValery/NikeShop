//
//  NikeShopApp.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

@main
struct NikeShopApp: App {
    var body: some Scene {
        WindowGroup {
            let colorsize = colorSneakerData[1]
            DetailSneaker(colorSize: colorsize)
        }
    }
}
