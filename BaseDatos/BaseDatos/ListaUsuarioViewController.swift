//
//  ListaUsuarioViewController.swift
//  BaseDatos
//
//  Created by Estudiante on 24/11/18.
//  Copyright © 2018 delvecchio. All rights reserved.
//

import UIKit

class ListaUsuarioViewController: UITableViewController {
    
    var listaUsuarios: [User] = [] {
        didSet{
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
}
