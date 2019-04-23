//
//  PollingTabBarViewController.swift
//  Poll
//
//  Created by Hector Steven on 4/22/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class PollingTabBarViewController: UITabBarController {
	var voteController = VoteController()
	
    override func viewDidLoad() {
        super.viewDidLoad()
		passVoteControllerToChildViewControllers()
		
    }
	
	func passVoteControllerToChildViewControllers() {
		for childrenController in children {
			
			if let child =  childrenController as? VoteControllerProtocol {
				child.voteController = voteController
			} else {
				print("error: passVoteControllerToChildViewControllers()")
			}
		}
	}


}


