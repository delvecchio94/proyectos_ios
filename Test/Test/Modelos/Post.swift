//
//  Post.swift
//  Test
//
//  Created by Estudiante on 3/11/18.
//  Copyright © 2018 delvecchio. All rights reserved.
//

import Foundation
import ObjectMapper

struct Post: Mappable{
    var userId: Int?
    var id: Int?
    var title: String?
    var body: String?
    
    init?(map: Map) {}
    
    mutating func mapping(map: Map) {
        self.userId <- map["userId"]
        self.id <- map["id"]
        self.title <- map["title"]
        self.body <- map["body"]
    }
    
}
