//
//  Vote.swift
//  Poll
//
//  Created by Hector Steven on 4/22/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import Foundation

class Vote {
	var name: String
	var response: String
	
	init(name: String, response: String) {
		self.name = name
		self.response = response
	}
}
