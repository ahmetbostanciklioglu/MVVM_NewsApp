//
//  UIViewController+extensions.swift
//  News-MMVM
//
//  Created by Ahmet Bostancıklıoğlu on 14.07.2022.
//

import UIKit

extension UIViewController {
    
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
}
