//
//  DetailSneaker.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

struct DetailSneaker: View {
    var sneaker: Sneaker
    @State private var selectColor: Int = 0
    
    var body: some View {
        ZStack {
            VStack {
                BigSneaker(sneaker: sneaker, selectColor: $selectColor)
                
                VStack {
                    HStack {
                        Spacer()
                        ForEach(sneakersData) { item in
                            PageIndicator(colorSize: item, select: $selectColor)
                        }
                        Spacer()
                    }
                    
                    AboutSneaker(selectColor: $selectColor)
                        .padding(.bottom)
                        .padding(.horizontal, 30)
                }
            }
            
            VStack {
                TopPanel()
                Spacer()
            }
        }
        .background(BackgroundNike())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let sneaker = sneakersData[1]
        DetailSneaker(sneaker: sneaker)
    }
}
