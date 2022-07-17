//
//  Assembly.swift
//  News-MMVM
//
//  Created by Ahmet Bostancıklıoğlu on 14.07.2022.
//

import UIKit

final class Assembly {
    func configureNewsModule() -> UIViewController {
        let model = Bindable([News]())
        let apiCall = ApiCall()
        let networkService = NetworkService(apiCall: apiCall)
        let viewModel = NewsViewModel(
            model: model,
            networkService: networkService,
            error: Bindable(nil),
            title: Bindable(""),
            isLoading: Bindable(true),
            totalData: 0,
            searchText: "",
            country: "tr",
            topic: "")
        let newsVC = NewsViewController(viewModel: viewModel)
        return newsVC
    }
}
