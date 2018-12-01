//
//  ListaUsuarioDelegate.swift
//  BaseDatos
//
//  Created by Estudiante on 24/11/18.
//  Copyright © 2018 delvecchio. All rights reserved.
//

import UIKit

extension ListaUsuarioViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaUsuarios.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        guard let nombre = listaUsuarios[indexPath.row].nombre else {return UITableViewCell()}
        guard let apellido = listaUsuarios[indexPath.row].apellido else {return UITableViewCell()}
        cell.textLabel?.text = "\(nombre) \(apellido)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let borrar = UITableViewRowAction(style: .destructive, title: "Borrar") { action, index in
            if UserStore.eliminarUsuario(self.listaUsuarios[indexPath.row]) {
                print("El usuario se elimino correctamente")
                self.listaUsuarios.remove(at: indexPath.row)
            }else{
                print("No se pudo eliminar el usuario")
            }
        }
        borrar.backgroundColor = .red
        
        return [borrar]
    }
    
}
