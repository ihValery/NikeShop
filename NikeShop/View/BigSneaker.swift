//
//  BigSneaker.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

struct BigSneaker: View {
    var colorSize: ColorSneaker
    @Binding var selectColor: Int
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Spacer()
                Text("NIKE AIR")
                    .foregroundColor(.white)
                    .font(.system(size: 80).bold())
                Spacer()
            }
           
            ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach(colorSneakerData) { item in
//                    GeometryReader { gr in
                    OneSneaker(width: getRect().width, select: $selectColor)
                        
                    }
                }
            }
            
            
            
            

            
        }
        .offset(y: -30)
    }
}

struct BigSneaker_Previews: PreviewProvider {
    static var previews: some View {
        let colorsize = colorSneakerData[1]
        BigSneaker(colorSize: colorsize, selectColor: .constant(0))
    }
}
