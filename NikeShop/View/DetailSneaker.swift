//
//  DetailSneaker.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

struct DetailSneaker: View {
    var colorSize: ColorSneaker
    @State private var selectColor: Int = 0
    
    var body: some View {
        VStack {
            GeometryReader { _ in
                TopPanel()
                BigSneaker(colorSize: colorSize, selectColor: $selectColor)
            }
            
            HStack {
                ForEach(colorSneakerData) { item in
                    PageIndicator(colorSize: item, select: $selectColor)
                }
            }
            
            GeometryReader { _ in
                AboutSneaker(selectColor: $selectColor)
                    .padding(.bottom)
                    .padding(.horizontal, 30)
            }
        }
        .background(BackgroundNike())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let colorsize = colorSneakerData[1]
        DetailSneaker(colorSize: colorsize)
    }
}
