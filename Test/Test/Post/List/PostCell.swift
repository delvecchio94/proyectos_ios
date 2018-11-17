//
//  PostCell.swift
//  Test
//
//  Created by Estudiante on 17/11/18.
//  Copyright © 2018 delvecchio. All rights reserved.
//

import Foundation
import UIKit

protocol PostCellDelegate: class {
    func postCellLike(cell: PostCell)
    func postCellMark(cell: PostCell)
}

class PostCell: UITableViewCell {
    
    weak var postDelegate: PostCellDelegate?
    
    @IBOutlet weak var titulo: UILabel!
    
    @IBOutlet weak var texto: UILabel!
    
    @IBAction func like(_ sender: Any) {
        postDelegate?.postCellLike(cell: self)
    }
    
    @IBAction func marker(_ sender: Any) {
        postDelegate?.postCellMark(cell: self)
    }
    
}
