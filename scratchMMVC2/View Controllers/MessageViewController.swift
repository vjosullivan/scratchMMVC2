//
//  MessageViewController.swift
//  scratchMMVC2
//
//  Created by Vincent O'Sullivan on 11/11/2017.
//  Copyright © 2017 Vincent O'Sullivan. All rights reserved.
//

import UIKit

class MessageViewController: UIViewController {

    weak var delegate: MessageViewControllerDelegate?
    
    // MARK: - Local variables and constants.

    private let messageText: String
    private let buttonText:  String

    // MARK: - Outlets.

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var button: UIButton!


    // MARK: - Initialisation.

    init(messageText: String, buttonText: String) {
        self.messageText = messageText
        self.buttonText  = buttonText

        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("MessageViewController.init(coder:) has not been implemented.")
    }

    // MARK: - UIViewController functions.

    override func viewDidLoad() {
        messageLabel.text = messageText
        button.setTitle(buttonText, for: .normal)

        super.viewDidLoad()
    }
}
