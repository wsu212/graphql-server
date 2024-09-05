//
//  FriendResolver.swift
//
//
//  Created by Wei-lun Su on 9/5/24.
//

import Vapor
import Graphiti
import GraphQLKit

// Post Resolver to handle fetching friends
struct FriendResolver {
    private let posts: [Friend] = [
        Friend(regiId: 1, name: "First Friend"),
        Friend(regiId: 2, name: "Second Friend")
    ]
    
    func getAllFriends(request: Request, _: NoArguments) throws -> [Friend] {
        posts
    }
}
