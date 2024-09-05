//
//  PostSchema.swift
//
//
//  Created by Wei-lun Su on 9/5/24.
//

import Foundation
import Graphiti
import Vapor

// Definition of our GraphQL schema.
let postSchema = try! Schema<PostResolver, Request> {
    // Post type with it's fields
    Type(Post.self) {
        Field("id", at: \.id)
        Field("title", at: \.title)
    }
    
    // We only have one single query: Getting all existing posts
    Query {
        Field("posts", at: PostResolver.getAllPosts)
    }
}
