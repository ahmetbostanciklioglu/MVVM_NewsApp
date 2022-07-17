//
//  Constants.swift
//  News-MMVM
//
//  Created by Ahmet Bostancıklıoğlu on 14.07.2022.
//

import UIKit

enum Constants {
    
    /// Network
    static let baseUrl = "https://newsapi.org/v2/"
    static let topHeadlines = "top-headlines?"
    static let everything = "everything?"
    static let apiKey = "apiKey=47dcd6a172a5403f8de0ba3075497db8"
            //53b50c107ff04fab932893969fd0974e
            //f2988f18c66b42b49b1f70b62b688c57
    
    static let country = "country="
    static let category = "category="
    static let query = "q="
    static let ampersand = "&"
    
    /// News/Topic TableView
    static let heightForHeader: CGFloat = 320
    static let heightForCell: CGFloat = 120
    static let heightForHeaderInSection: CGFloat = 50
    static let padding: CGFloat = 20
}
