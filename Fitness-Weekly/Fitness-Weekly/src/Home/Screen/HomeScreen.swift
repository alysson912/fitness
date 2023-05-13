//
//  HomeScreen.swift
//  Fitness-Weekly
//
//  Created by ALYSSON DODO on 13/05/23.
//

import UIKit

class HomeScreen: UIView {

    lazy var collectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.showsHorizontalScrollIndicator = false
        // TO DO: REGISTER CELL
        cv.backgroundColor = .clear
        
        
        return cv
    }()
    
    public func configProtocolsCollectionView(delegate: UICollectionViewDelegate, dataSorce: UICollectionViewDataSource){
        collectionView.delegate = delegate
        collectionView.dataSource = dataSorce
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .appBackGround
       
        addViews()
        configConstraints()
    }
    
    private func addViews(){
        addSubview(collectionView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints(){
        
        collectionView.pin(to: self)
        
        NSLayoutConstraint.activate([
        
           
        ])
    }
}
