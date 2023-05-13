//
//  HomeViewModel.swift
//  Fitness-Weekly
//
//  Created by ALYSSON DODO on 13/05/23.
//

import UIKit

class HomeViewModel {
    
    
    var numberOfItemsInSection: Int {
        return 2
    }
    
    public func sizeForItemAt(indexPath: IndexPath, frame: CGRect) -> CGSize {
        
        if indexPath.row == 0 { // caso seja a primeira cell
            return  CGSize(width: 120, height: frame.height)// tenha essa proporcao
        } else {// caso o contrario tenha essa outra
            return  CGSize(width: frame.width - 120, height: frame.height)
        }
    }
    
    
}
