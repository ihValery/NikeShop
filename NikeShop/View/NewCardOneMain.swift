//
//  NewCardOneMain.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 2.07.21.
//

import SwiftUI

struct NewCardOneMain: View {
    @Binding var showDetail: Bool
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 10) {
                Spacer()
                Text("NIKE AIR")
                    .font(Font.custom("DIN Condensed", size: 15))
                Text("AIR JORDAN 1 MID SE GC")
                    .font(Font.custom("DIN Condensed", size: 26))
                Text("¥856")
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
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Image(systemName: "plus")
                        .font(.title.bold())
                        .padding(35)
                        .background(CustomCorners(corner: [.topLeft, .bottomRight], radius: 50)
                                        .fill(Color.nikeYellow))
                }
            }
            
        }
        .background(RoundedRectangle(cornerRadius: 50).fill(Color.white))
        .frame(width: showDetail ? 0 : 290,
               height: showDetail ? 0 : 400)
        .offset(x: -30, y: 30)
        .opacity(showDetail ? 0 : 1)
    }
}

struct NewCardOneMain_Previews: PreviewProvider {
    static var previews: some View {
        NewCardOneMain(showDetail: .constant(false))
    }
}
