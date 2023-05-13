//
//  ViewController.swift
//  Fitness-Weekly
//
//  Created by ALYSSON DODO on 13/05/23.
//

import UIKit

class HomeVC: UIViewController {

    private var screen: HomeScreen?
    private var viewModel: HomeViewModel = HomeViewModel()
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configProtocolsCollectionView(delegate: self, dataSorce: self)
    }


}

extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numberOfItemsInSection
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        
        return UICollectionViewCell()
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return viewModel.sizeForItemAt(indexPath: indexPath, frame: collectionView.frame)
    }

}
