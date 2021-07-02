//
//  TopPanelMain.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 2.07.21.
//

import SwiftUI

struct TopPanelMain: View {
    @Binding var showDetail: Bool
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    withAnimation(.easeInOut) {
                        showDetail.toggle()
                    }
                }, label: {
                    Image("nikeLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 60)
                })
                
                Spacer()
                HStack(spacing: 20) {
                    Image(systemName: "equal")
                        .font(.largeTitle)
                    Image(systemName: "bag")
                        .font(.title)
                }
            }
            .foregroundColor(.white)
            .frame(height: 40)
            .padding(.horizontal, 20)
//            Spacer()
            }
    }
}
