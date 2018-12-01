//
//  Post.swift
//  Test
//
//  Created by Estudiante on 3/11/18.
//  Copyright © 2018 delvecchio. All rights reserved.
//

import Foundation
import ObjectMapper

public struct Post: Mappable{
    public var userId: Int?
    public var id: Int?
    public var title: String?
    public var body: String?
    
    public init?(map: Map) {}
    
    public mutating func mapping(map: Map) {
        self.userId <- map["userId"]
        self.id <- map["id"]
        self.title <- map["title"]
        self.body <- map["body"]
    }
    
}
