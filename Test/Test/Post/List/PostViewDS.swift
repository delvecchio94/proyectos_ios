//
//  PostViewControllerDS.swift
//  Test
//
//  Created by Estudiante on 3/11/18.
//  Copyright © 2018 delvecchio. All rights reserved.
//

import Foundation
import UIKit

extension PostViewController{
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CellPost")
        celda?.textLabel?.text = posts[indexPath.row].title
        celda?.detailTextLabel?.text = posts[indexPath.row].body
        return celda!
    }
    
}
