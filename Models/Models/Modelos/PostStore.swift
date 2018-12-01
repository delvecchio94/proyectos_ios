//
//  PostStore.swift
//  Test
//
//  Created by Estudiante on 3/11/18.
//  Copyright © 2018 delvecchio. All rights reserved.
//

import Alamofire
import ObjectMapper

public struct PostStore {
    
    public static func buscarPosts(completion: @escaping ([Post]?) -> Void){
        Alamofire.request("https://jsonplaceholder.typicode.com/posts").responseJSON{
            response in
            if let json = response.result.value as? [[String:Any]] {
                let array = Mapper<Post>().mapArray(JSONArray: json)
                completion(array)
            }else{
                completion(nil)
            }
        }
    }
}
