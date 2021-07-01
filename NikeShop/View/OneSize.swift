//
//  OneSize.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

struct OneSize: View {
    var size: Size
    @Binding var select: Int
    
    var body: some View {
        Group {
            Text(size.number).bold()
                .frame(width: 30, height: 30)
                .background(RoundedRectangle(cornerRadius: 6).fill(select == size.id ? Color.nikeYellow : Color.white))
                .foregroundColor(.nikeBlack)
                .font(Font.custom("Avenir Next Condensed", size: 16))
        }
    }
}

struct OneSize_Previews: PreviewProvider {
    static var previews: some View {
        let size = sizeData[1]
        OneSize(size: size, select: .constant(0))
            .preferredColorScheme(.dark)
    }
}
