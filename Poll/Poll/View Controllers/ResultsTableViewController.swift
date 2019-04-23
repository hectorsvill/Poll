//
//  ResultsTableViewController.swift
//  Poll
//
//  Created by Hector Steven on 4/22/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController, VoteControllerProtocol {

	var voteController: VoteController?
	
    override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		tableView.reloadData()
	}
	

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		
		return voteController?.votes.count ?? 0
    }

	
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VoteCell", for: indexPath)
		let vote = voteController?.votes[indexPath.row]
		
		cell.textLabel?.text = vote?.name
		cell.detailTextLabel?.text = vote?.response
        return cell
    }


	

}
