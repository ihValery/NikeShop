//
//  MainView.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

struct MainView: View {
    @State private var showDetail: Bool = false
    
    var body: some View {
        ZStack {
            Color.nikeBlack
            .ignoresSafeArea()
   
            VStack(spacing: 70) {
                TopPanelMain(showDetail: $showDetail)
                
                ButtonPanelMain()
                Spacer()
            }
            
            ZStack {
                HStack {
                    RoundedRectangle(cornerRadius: 50)
                        .fill(Color.white)
                        .frame(width: 250, height: 400)
                        .offset(y: 30)
                    Spacer()
                }
                .padding(.horizontal)
            }
            
            BottomPanelMain()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
