//
//  ButtonPanelMain.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 2.07.21.
//

import SwiftUI

struct ButtonPanelMain: View {
    @State private var select: Int = 1
    
    var body: some View {
        HStack(spacing: 30) {
            Button(action: { select = 1 }, label: {
                Text("Basketball")
                    .foregroundColor(select == 1 ? .nikeYellow : .gray)
                    .font(Font.custom("DIN Condensed", size: 26))
            })
            Button(action: { select = 2 }, label: {
                Text("Running")
                    .foregroundColor(select == 2 ? .nikeYellow : .gray)
                    .font(Font.custom("DIN Condensed", size: 26))
            })
            Button(action: { select = 3 }, label: {
                Text("Training")
                    .foregroundColor(select == 3 ? .nikeYellow : .gray)
                    .font(Font.custom("DIN Condensed", size: 26))
            })
            Spacer()
        }
        .padding(.horizontal, 20)
    }
}
