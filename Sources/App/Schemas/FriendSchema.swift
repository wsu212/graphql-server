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
        // Fetch all friends
        Field("friends", at: FriendResolver.getAllFriends)
        
        // Fetch friend by regiId
        Field("friend", at: FriendResolver.getFriendById) {
            Argument("regiId", at: \.regiId)
        }
    }
    
    Mutation {
        // Add new friend
        Field("addFriend", at: FriendResolver.addFriend) {
            Argument("regiId", at: \.regiId)
            Argument("name", at: \.name)
        }
    }
}
