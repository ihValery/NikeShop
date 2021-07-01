//
//  DetailSneaker.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

struct DetailSneaker: View {
    var body: some View {
        VStack {
            GeometryReader { gr in
                TopPanel()
                BigSneaker()
            }
            
            PageIndicator()
            
            GeometryReader { gr in
                
            }
        }
        .background(BackgroundNike())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DetailSneaker()
    }
}
