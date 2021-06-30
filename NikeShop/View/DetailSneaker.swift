//
//  DetailSneaker.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

struct DetailSneaker: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 29.0/255.0, green: 32.0/255.0, blue: 32.0/255.0, alpha: 1.0))
                .ignoresSafeArea()
            
            Circle().fill(Color(UIColor(red: 255.0/255.0, green: 191.0/255.0, blue: 1.0/255.0, alpha: 1.0)))
                .frame(width: 500, height: 500)
                .offset(x: UIScreen.main.bounds.width / 2 - 20, y: -(UIScreen.main.bounds.height / 2) + 150)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DetailSneaker()
    }
}
