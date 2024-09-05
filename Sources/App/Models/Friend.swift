//
//  Friend.swift
//  graphql-server
//
//  Created by Wei-lun Su on 9/5/24.
//

import Foundation

struct Friend: Codable {
    var regiId: Int
    var name: String

    init(
        regiId: Int,
        name: String
    ) {
        self.regiId = regiId
        self.name = name
    }
}
