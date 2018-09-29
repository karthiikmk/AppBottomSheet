//
//  DraggablePresentAnimator.swift
//  PresentationController
//
//  Created by Emre on 11.09.2018.
//  Copyright © 2018 Emre. All rights reserved.
//

import UIKit

class BottomPopupPresentAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    
    private unowned var attributesOwner: BottomPopupViewController
    
    init(attributesOwner: BottomPopupViewController) {
        self.attributesOwner = attributesOwner
    }
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return attributesOwner.getPopupPresentDuration()
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let toVC = transitionContext.viewController(forKey: .to)!
        transitionContext.containerView.addSubview(toVC.view)
        let presentFrame = transitionContext.finalFrame(for: toVC)
        let initialFrame = CGRect(origin: CGPoint(x: 0, y: UIScreen.main.bounds.size.height), size: presentFrame.size)
        toVC.view.frame = initialFrame
        
        switch attributesOwner.canEnableSpringAnimation() {
        case false:
            UIView.animate(withDuration: transitionDuration(using: transitionContext), animations: {
                toVC.view.frame = presentFrame
            }) { (_) in
                transitionContext.completeTransition(true)
            }
        case true:
            UIView.animate(withDuration: transitionDuration(using: transitionContext), delay: 0, usingSpringWithDamping: BottomPopupConstants.kEnableSpringAnimation ? 0.85 : 0, initialSpringVelocity: 0, options: .curveLinear, animations: {
                toVC.view.frame = presentFrame
            }) { (_) in
                transitionContext.completeTransition(true)
            }
        }
    }
}
