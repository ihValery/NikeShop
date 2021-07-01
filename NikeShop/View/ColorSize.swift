//
//  ColorSize.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

struct ColorSize: View {
    @State private var selectColor: Int = 0
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text("COLOR")
                        .font(Font.custom("DIN Condensed", size: 15))
                    
                    HStack(spacing: 20) {
                        ForEach(colorSneakerData) { item in
                            OneCircleColor(colorSize: item, select: $selectColor)
                                .onTapGesture {
                                    selectColor = item.id
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
        .foregroundColor(.white)
        .padding()
        .frame(width: getRect().width , height: getRect().height / 2)
        .background(Color.nikeBlack)
    }
}

struct OneCircleColor: View {
    var colorSize: ColorSneaker
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
                .frame(width: 15, height: 15)
        }
    }
}

struct BgCircleColor: View {
    var body: some View {
        Circle()
            .fill(Color.white)
            .frame(width: 20, height: 20)
    }
}

struct ColorSize_Previews: PreviewProvider {
    static var previews: some View {
        ColorSize()
    }
}
