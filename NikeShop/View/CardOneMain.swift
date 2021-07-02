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
//            HStack {
//                RoundedRectangle(cornerRadius: 50)
//                    .fill(Color.white)
//                    .offset(x: -50, y: 30)
//            }
            
            VStack(alignment: .leading, spacing: showDetail ? 0 : 10) {
                Text("NIKE AIR")
                    .font(Font.custom("DIN Condensed", size: 15))
                Text("AIR JORDAN 1 MID SE GC")
                    .font(Font.custom("DIN Condensed", size: 26))
                Text("¥856")
                    .font(Font.custom("DIN Condensed", size: 30))
                
                VStack(alignment: .leading) {
                    Text("NIKE").fontWeight(.black)
                    Text("AIR").fontWeight(.black)
                }
                .foregroundColor(.gray)
                .font(Font.custom("DIN Condensed", size: 100))
            }
            .padding(.horizontal)
            .background(RoundedRectangle(cornerRadius: 50)
                            .fill(Color.white)
                            .offset(x: -50, y: 30))

        }
        .frame(width: showDetail ? 0 : 250,
               height: showDetail ? 0 : 400)
    }
}

struct CardOneMain_Previews: PreviewProvider {
    static var previews: some View {
        CardOneMain(showDetail: .constant(true))
    }
}
