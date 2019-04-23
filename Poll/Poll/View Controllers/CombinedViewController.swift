//
//  CombinedViewController.swift
//  Poll
//
//  Created by Hector Steven on 4/22/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController,  VoteControllerProtocol {
	var voteController: VoteController?
	var resultsTableViewController: ResultsTableViewController?
	var votingViewController: VotingViewController?
	override func viewDidLoad() {
        super.viewDidLoad()
		
        
    }
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "ResultsSegue" {
			guard let table = segue.destination as? ResultsTableViewController else { return }
			table.voteController = voteController
//			table.delegate = self
			resultsTableViewController = table
			
		} else if segue.identifier == "Votingsegue" {
			guard let voting = segue.destination as? VotingViewController else { return }
			votingViewController = voting
		}
	}

}

