//
//  File.swift
//  
//
//  Created by Don Kittle on 2022-12-14.
//

import SwiftUI

struct Campaign: Codable, Hashable, Identifiable {
    var id: Int64
    var name: String
    var dmId: Int64
    var dmUsername: String
    var splashUrl: String
    var dateCreated: String
    var playerCount: Int
}

