//
//  MainViewController.swift
//  scratchMMVC2
//
//  Created by Vincent O'Sullivan on 11/11/2017.
//  Copyright © 2017 Vincent O'Sullivan. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: - Local variables and constants.

    private let loader: ArchitectureLoading

    // MARK: - Initialization.

    init(loader: ArchitectureLoading) {
        self.loader = loader

        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("Clonk!")
    }

   override func viewDidLoad() {
        super.viewDidLoad()
        print("Main view did load.")
        view.backgroundColor = UIColor.yellow

        let messageVC = MessageViewController(
            messageText: "Generate an iOS app architecture...", buttonText: "Go!")
        messageVC.delegate = self

        transition(to: messageVC)
    }
}

extension MainViewController: MessageViewControllerDelegate {

    func messageViewControllerActionButtonWasPressed(_ messageVC: MessageViewController) {
        print("Action button pressed.")
    }

}
