//
//  TableViewDS.swift
//  Test
//
//  Created by Estudiante on 27/10/18.
//  Copyright © 2018 delvecchio. All rights reserved.
//

import Foundation
import UIKit

extension TableViewController{
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usuarios.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CustomCell
        cell.nombre.text = usuarios[indexPath.row].nombre
        cell.pais.text = usuarios[indexPath.row].pais.rawValue
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        mostrarDetalle(usuario: usuarios[indexPath.row])
    }
    
}
