//
//  OneSize.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

struct OneSize: View {
    var size: String
    @Binding var select: Bool
    
    var body: some View {
        Group {
            Text(size).bold()
                .frame(width: 30, height: 30)
                .background(RoundedRectangle(cornerRadius: 6).fill(select ? Color.nikeYellow : Color.white))
                .foregroundColor(.nikeBlack)
                .font(Font.custom("Avenir Next Condensed", size: 16))
        }
    }
}

struct OneSize_Previews: PreviewProvider {
    static var previews: some View {
        OneSize(size: "7.5", select: .constant(true))
            .preferredColorScheme(.dark)
    }
}
