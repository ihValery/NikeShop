//
//  ListSneaker.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

struct ListSneaker: View {
    @Binding var page: Int
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(sneakersData) { item in
                OneSneaker(sneaker: item, page: $page)
            }
        }
    }
}
