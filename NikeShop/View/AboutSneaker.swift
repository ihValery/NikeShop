//
//  AboutSneaker.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

struct AboutSneaker: View {
    @State private var selectSize: Int = 0
    @Binding var selectColor: Int
    
    var body: some View {
        VStack(spacing: 50) {
            Spacer()
            
            VStack(alignment: .leading, spacing: 8) {
                Text("NIKE AIR")
                    .font(Font.custom("DIN Condensed", size: 15))
                HStack {
                    Text(sneakersData[selectColor].name)
                    Spacer()
                    Text("¥\(sneakersData[selectColor].price)")
                }
                .font(Font.custom("DIN Condensed", size: 26))
                
                HStack {
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill").foregroundColor(.white)
                }
                .foregroundColor(.nikeYellow)
                .font(.system(size: 8))
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text("SIZE")
                    .font(Font.custom("DIN Condensed", size: 15))
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(sizeData) { item in
                            OneSize(size: item, select: $selectSize)
                                .onTapGesture {
                                    selectSize = item.id
                                }
                        }
                    }
                }
            }
            
            ColorSize(select: $selectColor)
        }
        .foregroundColor(.white)
//        .padding()
//        .frame(width: getRect().width , height: getRect().height / 2)
//        .background(Color.nikeBlack)
    }
}

struct AboutSneaker_Previews: PreviewProvider {
    static var previews: some View {
        AboutSneaker(selectColor: .constant(1))
    }
}
