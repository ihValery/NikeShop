//
//  BottomPanelMain.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 2.07.21.
//

import SwiftUI

struct BottomPanelMain: View {
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: .infinity)
                    .fill(Color.nikeYellow)
                    .frame(height: 100)
                HStack {
                    Spacer()
                    Image(systemName: "house")
                    Spacer()
                    Spacer()

                    ZStack {
                        Circle()
                            .fill(Color.nikeBlack)
                            .frame(width: 60, height: 60)
                        Circle()
                            .fill(Color.nikeYellow)
                            .frame(width: 23, height: 23)
                        Circle()
                            .fill(Color.nikeBlack)
                            .frame(width: 16, height: 16)
                        Circle()
                            .fill(Color.nikeYellow)
                            .frame(width: 10, height: 10)
                        Circle()
                            .fill(Color.nikeBlack)
                            .frame(width: 4, height: 4)
                    }
                   
                    Spacer()
                    Spacer()

                    Image(systemName: "person")
                    Spacer()
                }
                .foregroundColor(.nikeBlack)
                .font(.title)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}
