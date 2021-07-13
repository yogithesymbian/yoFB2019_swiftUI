//
//  MainController.swift
//  yoFB2019_swiftUI
//
//  Created by Yogi Arif Widodo on 13/07/21.
//

import UIKit
import LBTATools

class PostCell: LBTAListCell<String> {
    
    let imageView = UIImageView(backgroundColor: .red)
    let nameLabel = UILabel(text: "Name Label")
    let dateLabel = UILabel(text: "Friday at 11:11AM")
    let postTextLabel = UILabel(text: "Here is my post text")
    let imageViewGrid = UIView(backgroundColor: .yellow)
    
    override func setupViews() {
        backgroundColor = .white
        
        stack(
            hstack(
                imageView.withHeight(40).withWidth(40),
                   stack(nameLabel,dateLabel),
                spacing: 8
            ).padLeft(12).padRight(12).padTop(12),
            postTextLabel,
            imageViewGrid,
            spacing: 8
        )
    }
}

class MainController: LBTAListController<PostCell, String>, UICollectionViewDelegateFlowLayout {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .init(white: 0.9, alpha: 1)
        
        self.items = ["hello", "WORLD", "1", "2", "3"]
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 250 )
    }
}

import SwiftUI
struct MainPreview: PreviewProvider {
    static var previews: some View {
//        Text("main preview 1")
        ContainerView().edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        func makeUIViewController(context: Context) -> some UIViewController {
            return MainController()
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
//            return MainController()
        }
    }
}
