//
//  CardOneMain.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 2.07.21.
//

import SwiftUI

struct CardOneMain: View {
    @Binding var showDetail: Bool
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 10) {
                Spacer()
                Text("NIKE AIR")
                    .font(Font.custom("DIN Condensed", size: 15))
                Text("AIR JORDAN 1 MID SE GC")
                    .font(Font.custom("DIN Condensed", size: 26))
                Text("¥579")
                    .font(Font.custom("DIN Condensed", size: 30))
                Spacer()
                VStack(alignment: .leading) {
                    Text("NIKE").fontWeight(.black)
                    Text("AIR").fontWeight(.black)
                }
                .foregroundColor(.gray).opacity(0.3)
                .font(Font.custom("DIN Condensed", size: 100))
                
            }
            .padding()
        }
        .background(RoundedRectangle(cornerRadius: 50).fill(Color.gray).opacity(0.7))
        .background(RoundedRectangle(cornerRadius: 50).fill(Color.white))
        
        .frame(width: 200, height: 300)
        .offset(x: -50, y: 50)
        
        Image("airJordanOneMidBlue")
            .resizable()
            .scaledToFit()
            .rotationEffect(.degrees(-30))
            .offset(x: -10, y: 50)
            .shadow(color: .black.opacity(0.8), radius: 20, x: 20, y: 10)
            .frame(width: 350, height: 350)
    }
}

struct CardOneMain_Previews: PreviewProvider {
    static var previews: some View {
        CardOneMain(showDetail: .constant(false))
    }
}
