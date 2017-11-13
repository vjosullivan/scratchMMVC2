//
//  UIViewControllerTransition.swift
//  scratchMMVC
//
//  Created by Vincent O'Sullivan on 10/11/2017.
//  Copyright © 2017 Vincent O'Sullivan. All rights reserved.
//

import UIKit

extension UIViewController {

    func transition(to destinationVC: UIViewController, completion: ((Bool) -> Void)? = nil) {
        print("Transitioning...")

        let duration = 0.3
        let currentVC = childViewControllers.last
        addChildViewController(destinationVC)

        let newView = destinationVC.view!
        newView.translatesAutoresizingMaskIntoConstraints = true
        newView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        newView.frame = view.bounds

        if let currentVC = currentVC {
            print("Current VC found. A")
            currentVC.willMove(toParentViewController: nil)
            transition(
                from: currentVC, to: destinationVC,
                duration: duration,
                options: [.transitionCrossDissolve],
                animations: {},
                completion: {done in
                    print("C")
                    currentVC.removeFromParentViewController()
                    destinationVC.didMove(toParentViewController: self)
                    completion?(done)
            })
            print("Current VC found. B")
        } else {
            print("Current VC not found.")
            view.addSubview(newView)
            UIView.animate(
                withDuration: duration,
                delay: 0.0,
                options: [.transitionCrossDissolve],
                animations: {},
                completion: { done in
                    destinationVC.didMove(toParentViewController: self)
                    completion?(done)
            })
        }
        print("Transitioned.")
    }

}
