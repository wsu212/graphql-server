//
//  PostResolver.swift
//
//
//  Created by Wei-lun Su on 9/5/24.
//

import Vapor
import Graphiti
import GraphQLKit

// Post Resolver to handle fetching posts
struct PostResolver {
    private let posts: [Post] = [
        Post(id: 1, title: "First Post"),
        Post(id: 2, title: "Second Post")
    ]
    
    func getAllPosts(request: Request, _: NoArguments) throws -> [Post] {
        posts
    }
}
