//
//  ResultsTableViewController.swift
//  Poll
//
//  Created by Hector Steven on 4/22/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController {

	var voteController = VoteController()
	
    override func viewDidLoad() {
        super.viewDidLoad()

    }

	

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

	

}
