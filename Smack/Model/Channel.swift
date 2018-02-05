//
//  Channel.swift
//  Smack
//
//  Created by Sam DuBois on 2/5/18.
//  Copyright © 2018 Sam DuBois. All rights reserved.
//

import Foundation

struct Channel: Decodable {
    public private(set) var _id: String!
    public private(set) var name: String!
    public private(set) var description: String!
    public private(set) var __V: Int!
}
