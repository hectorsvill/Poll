//
//  VotingViewController.swift
//  Poll
//
//  Created by Hector Steven on 4/22/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {
	var voteController: VoteController?
	

	@IBOutlet weak var nameTextField: UITextField!
	@IBOutlet weak var responderTextField: UITextField!
	
	override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	@IBAction func SubmitActionButton(_ sender: Any) {
		guard let name = nameTextField.text,
		let response = responderTextField?.text else { return }
		
		voteController?.Create(name: name, response: response)
		
		nameTextField.text = ""
		responderTextField.text = ""
	}

	

}
