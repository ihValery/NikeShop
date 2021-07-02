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
    @State private var showDetail: Bool = true
    
    var body: some View {
        ZStack {
            VStack(spacing: 70) {
                TopPanelMain(showDetail: $showDetail)
                
                ButtonPanelMain()
                Spacer()
            }
            .zIndex(1)
            .offset(y: showDetail ? -getRect().height : 0)
            
            
            VStack {
                BigSneaker(sneaker: sneaker, selectColor: $selectColor, showDetail: $showDetail)
                    .offset(x: 0, y: showDetail ? -210 : 40)
                
                VStack {
                    HStack {
                        ForEach(sneakersData) { item in
                            PageIndicator(colorSize: item, select: $selectColor)
                        }
                    }
                    
                    AboutSneaker(selectColor: $selectColor)
                        .padding(.bottom)
                        .padding(.horizontal, 30)
                }
                .offset(y: showDetail ? 0 : getRect().height + getRect().height / 2)
            }
    
            CardOneMain(showDetail: $showDetail)
            OneSneaker(sneaker: sneaker, page: $selectColor)
                .offset(x: 0, y: showDetail ? -210 : 40)
            
            VStack {
                TopPanel(showDetail: $showDetail)
                Spacer()
            }
            
            BottomPanelMain()
                .offset(y: showDetail ? 200 : 0)
        }
        .background(BackgroundNike(showDetail: $showDetail))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let sneaker = sneakersData[0]
        DetailSneaker(sneaker: sneaker)
    }
}
