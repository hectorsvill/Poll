//
//  VoteController.swift
//  Poll
//
//  Created by Hector Steven on 4/22/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class VoteController {
	var votes: [Vote] = []
	
	init() {
		Create(name: "Mike", response: "May")
		Create(name: "Hector", response: "May")
		Create(name: "Marcela", response: "December")
	}
	
	func Create(name: String, response: String) {
		let v = Vote(name: name, response: response)
		votes.append(v)
	}
}
