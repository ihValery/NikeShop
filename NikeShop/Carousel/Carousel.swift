//
//  Carousel.swift
//  NikeShop
//
//  Created by Валерий Игнатьев on 1.07.21.
//

import SwiftUI

struct Carousel: UIViewRepresentable {
    var width: CGFloat
    @Binding var page: Int

    func makeUIView(context: Context) -> UIScrollView {
        let total = width * CGFloat(sneakersData.count)
        let view = UIScrollView()
        
        //Разрешено ли разбиение по страницам для просмотра с прокруткой.
        view.isPagingEnabled = true
        
        view.contentSize = CGSize(width: total, height: 1)
        view.bounces = true
        view.showsVerticalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        view.delegate = context.coordinator
        
        let viewController = UIHostingController(rootView: ListSneaker(page: $page))
        viewController.view.frame = CGRect(x: 0, y: 0, width: total, height: width - 40)
        viewController.view.backgroundColor = .clear
        
        view.addSubview(viewController.view)
        return view
    }
    
    func makeCoordinator() -> Coordinator {
        Carousel.Coordinator(self)
    }
    
    //Не забываем про update ))) как мы и хотели
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.setContentOffset(CGPoint(x: width * CGFloat(page), y: uiView.contentOffset.y), animated: true)
    }

    class Coordinator: NSObject, UIScrollViewDelegate {
        var parent: Carousel
        
        init(_ parent: Carousel) {
            self.parent = parent
        }
        
        func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            let page = Int(scrollView.contentOffset.x / UIScreen.main.bounds.width)
            parent.page = page
        }
    }
}
