//
//  ColorSize.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

struct ColorSize: View {
    @Binding var select: Int
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text("COLOR")
                        .font(Font.custom("DIN Condensed", size: 15))
                    
                    HStack(spacing: 10) {
                        ForEach(sneakersData) { item in
                            OneCircleColor(colorSize: item, select: $select)
                                .onTapGesture {
                                    select = item.id
                                }
                        }
                    }
                }
                Spacer()
                
                Button(action: {}, label: {
                    Text("BUY")
                        .foregroundColor(.nikeBlack)
                        .font(Font.custom("DIN Condensed", size: 30))
                        .padding(15).padding(.top, 9)
                        .padding(.horizontal)
                        .background(RoundedRectangle(cornerRadius: 16)
                                        .fill(Color.nikeYellow))
                })
            }
        }
//        .foregroundColor(.white)
//        .padding()
//        .frame(width: getRect().width , height: getRect().height / 2)
//        .background(Color.nikeBlack)
    }
}

struct OneCircleColor: View {
    var colorSize: Sneaker
    @Binding var select: Int
    
    var body: some View {
        ZStack {
            if select == colorSize.id {
                BgCircleColor()
            } else {
                BgCircleColor()
                    .hidden()
            }
            Circle()
                .strokeBorder(Color.nikeBlack, lineWidth: 0.1)
                .background(colorSize.color).clipShape(Circle())
                .frame(width: 18, height: 18)
        }
        .animation(.easeInOut)
    }
}

struct BgCircleColor: View {
    var body: some View {
        Circle()
            .fill(Color.white)
            .frame(width: 25, height: 25)
    }
}

struct ColorSize_Previews: PreviewProvider {
    static var previews: some View {
        ColorSize(select: .constant(1))
    }
}
