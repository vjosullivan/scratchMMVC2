//
//  MainViewController.swift
//  scratchMMVC2
//
//  Created by Vincent O'Sullivan on 11/11/2017.
//  Copyright © 2017 Vincent O'Sullivan. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.cyan

        let initialVC = MessageViewController(
            messageText: "Generate an iOS app architecture...", buttonText: "Go!")
        initialVC.delegate = self
    }
}

extension MainViewController: MessageViewControllerDelegate {

}
