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
			
			guard let child =  childrenController as? VoteControllerProtocol  else {
				print("error: passVoteControllerToChildViewControllers()")
				return
			}
			child.voteController = voteController
		}
	}


}


