//
//  Font.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

func fontSize(for size: CGSize) -> CGFloat {
    min(size.height, size.width)
}
