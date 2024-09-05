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
    Type(Post.self) {
        Field("id", at: \.id)
        Field("title", at: \.title)
    }
    
    Query {
        Field("posts", at: PostResolver.getAllPosts)
    }
}
