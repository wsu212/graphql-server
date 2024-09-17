//
//  FriendResolver.swift
//
//
//  Created by Wei-lun Su on 9/5/24.
//

import Vapor
import Graphiti
import GraphQLKit

// Friend Resolver to handle friends management
final class FriendResolver {
    private var friends: [Friend] = [
        Friend(regiId: 1, name: "Francisco Lindor"),
        Friend(regiId: 2, name: "Brandon Nimmo"),
        Friend(regiId: 3, name: "Jeff McNeil"),
        Friend(regiId: 4, name: "Kodai Senga"),
        Friend(regiId: 5, name: "Edwin Díaz"),
        Friend(regiId: 6, name: "Fernando Tatis Jr."),
        Friend(regiId: 7, name: "Yu Darvish"),
        Friend(regiId: 8, name: "Blake Snell"),
        Friend(regiId: 9, name: "Freddie Freeman"),
        Friend(regiId: 10, name: "Mookie Betts"),
    ]
    
    func getAllFriends(request: Request, _: NoArguments) throws -> [Friend] {
        friends
    }
    
    func getFriendById(request: Request, arguments: FriendArguments) throws -> Friend? {
        friends.first { $0.regiId == arguments.regiId }
    }
    
    func addFriend(request: Request, arguments: AddFriendArguments) throws -> Friend {
        let friend = Friend(regiId: arguments.regiId, name: arguments.name)
        friends.append(friend)
        return friend
    }
}
