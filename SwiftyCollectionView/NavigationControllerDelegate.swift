//
//  NavigationControllerDelegate.swift
//
//
//  Created by ViNiT. on 8/1/15.
//
//

import UIKit

class NavigationControllerDelegate : NSObject, UINavigationControllerDelegate {
    
    func navigationController(navigationController: UINavigationController, animationControllerForOperation operation: UINavigationControllerOperation,
        fromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
            
            let animator = CKWaveCollectionViewAnimator()
            
            if operation != UINavigationControllerOperation.Push {
                
                animator.reversed = true
            }
            
            return animator
    }
}
