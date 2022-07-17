//
//  UITableView+extensions.swift
//  News-MMVM
//
//  Created by Ahmet Bostancıklıoğlu on 14.07.2022.
//

import Foundation
import UIKit

extension UITableView {
    
    func animateTableView() {
        self.reloadData()
        
        let cells = self.visibleCells
        let tableViewHeight = self.bounds.height
        
        var delay: Double = 0
        
        for cell in cells {
            cell.transform = CGAffineTransform(translationX: 0, y: tableViewHeight)
            
            UIView.animate(
                withDuration: 1, delay: delay * 0.05,
                usingSpringWithDamping: 0.8,
                initialSpringVelocity: 0, options: .curveEaseInOut
            )
            {
                cell.transform = CGAffineTransform.identity
            }
            delay += 1
        }
    }
}
