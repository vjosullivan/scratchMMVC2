//
//  MessageViewController.swift
//  scratchMMVC
//
//  Created by Vincent O'Sullivan on 10/11/2017.
//  Copyright © 2017 Vincent O'Sullivan. All rights reserved.
//

import UIKit

class MessageViewController: UIViewController {

    // MARK: - Local variables and constants.

    weak var delegate: MessageViewControllerDelegate?
    private let messageText: String
    private let buttonText: String

    // MARK: - Outlets.

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var actionButton: UIButton!


    // MARK: - Initialisation.

    init(messageText: String, buttonText: String = "Try again.") {
        self.messageText = messageText
        self.buttonText  = buttonText

        super.init(nibName: nil, bundle: nil)
    }

    // MARK: - UIViewController methods.

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Mess view did load.")
        messageLabel?.text = messageText
        actionButton?.setTitle(buttonText, for: .normal)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("Bonk!")
    }

    // MARK: - Actions.

    @IBAction func action(_ sender: UIButton) {
        print("Action!")
    }
}
