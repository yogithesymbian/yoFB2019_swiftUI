//
//  MainController.swift
//  yoFB2019_swiftUI
//
//  Created by Yogi Arif Widodo on 13/07/21.
//

import UIKit
import LBTATools

class PostCell: LBTAListCell<String> {
    override func setupViews() {
        backgroundColor = .red
    }
}

class MainController: LBTAListController<PostCell, String>, UICollectionViewDelegateFlowLayout {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.items = ["hello", "WORLD", "1", "2"]
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 200 )
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
