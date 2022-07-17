//
//  Bindable.swift
//  News-MMVM
//
//  Created by Ahmet Bostancıklıoğlu on 14.07.2022.
//

import Foundation

final class Bindable<T> {
    
    typealias Listener = (T) -> Void
    
    private var listener: Listener?
    
    var value : T {
        didSet {
            listener?(value)
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
    
    func bind(_ listener: Listener?) {
        self.listener = listener
        listener?(value)
    }
}
