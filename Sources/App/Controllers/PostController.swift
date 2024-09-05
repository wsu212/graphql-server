//
//  PostController.swift
//
//
//  Created by Wei-lun Su on 9/5/24.
//

import Vapor
import GraphQLKit

final class PostController {
    /// A function that will return all the posts.
    func fetchPosts(request: Request, _: NoArguments) throws -> [Post] {
        return posts
    }

    /// A private property as in-memory storage.
    private var posts = [
        Post(id: 1, title: "My first post")
    ]
}
