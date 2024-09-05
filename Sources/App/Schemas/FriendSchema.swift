//
//  FriendSchema.swift
//
//
//  Created by Wei-lun Su on 9/5/24.
//

import Foundation
import Graphiti
import Vapor

// Definition of our GraphQL schema.
let friendSchema = try! Schema<FriendResolver, Request> {
    Type(Friend.self) {
        Field("regiId", at: \.regiId)
        Field("name", at: \.name)
    }
    
    Query {
        Field("friends", at: FriendResolver.getAllFriends)
    }
}
