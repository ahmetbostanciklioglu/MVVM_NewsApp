//
//  SkeletonLoadable.swift
//  News-MMVM
//
//  Created by Ahmet Bostancıklıoğlu on 14.07.2022.
//

import UIKit

protocol SkeletonLoadable {}

extension SkeletonLoadable {
    
    func makeAnimationGroup(previousGroup: CAAnimationGroup? = nil) -> CAAnimationGroup {
       
        let animationDuration: CFTimeInterval = 1.5
        let animation1 = CABasicAnimation(keyPath: #keyPath(CAGradientLayer.backgroundColor))
        animation1.fromValue = UIColor.tertiarySystemBackground.cgColor
        animation1.toValue = UIColor.secondarySystemGroupedBackground.cgColor
        animation1.duration = animationDuration
        animation1.beginTime = 0.0
        
        let animation2 = CABasicAnimation(keyPath: #keyPath(CAGradientLayer.backgroundColor))
        animation2.fromValue = UIColor.secondarySystemGroupedBackground.cgColor
        animation2.toValue = UIColor.tertiarySystemBackground.cgColor
        animation2.duration = animationDuration
        animation2.beginTime = animation1.beginTime + animation1.duration
        
        
        let animationGroup = CAAnimationGroup()
        animationGroup.animations = [animation1, animation2]
        animationGroup.repeatCount = .greatestFiniteMagnitude
        animationGroup.duration = animation2.beginTime + animation2.duration
        animationGroup.isRemovedOnCompletion = false
        
        if let previousGroup = previousGroup {
            // Offset groups by 0.33 seconds for effect
            animationGroup.beginTime = previousGroup.beginTime + 0.33
        }
        
        return animationGroup
    }
}
