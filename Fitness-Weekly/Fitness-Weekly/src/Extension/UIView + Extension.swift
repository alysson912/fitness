//
//  UIView+Extension.swift
//  Fitness-Weekly
//
//  Created by ALYSSON DODO on 13/05/23.
//

import Foundation
import UIKit

extension UIView {
    
    func pin(to superView: UIView) { // funcao para zerar constraints
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.topAnchor),
            leadingAnchor.constraint(equalTo: superView.leadingAnchor),
            trailingAnchor.constraint(equalTo: superView.trailingAnchor),
            bottomAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
    
}
