//
//  PostViewController.swift
//  Test
//
//  Created by Estudiante on 3/11/18.
//  Copyright © 2018 delvecchio. All rights reserved.
//

import Foundation
import UIKit
import Models

class PostViewController: UITableViewController,PostCellDelegate{
    var posts: [Post] = []{
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.rowHeight = UITableView.automaticDimension
        PostStore.buscarPosts { (post) in
            guard let posts = post else{
                return
            }
            self.posts = posts
        }
    }
    
    func postCellLike(cell: PostCell) {
        print("like")
    }
    
    func postCellMark(cell: PostCell) {
        print("mark")
    }
    
}
