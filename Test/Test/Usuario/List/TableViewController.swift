//
//  TableViewController.swift
//  Test
//
//  Created by Estudiante on 27/10/18.
//  Copyright © 2018 delvecchio. All rights reserved.
//

import Foundation
import UIKit
import Models

class TableViewController: UITableViewController {
    
    var usuarios = [
        Usuario("Felix", Pais.colombia),
        Usuario("Jose", Pais.argentina),
        Usuario("Jorge", Pais.israel),
        Usuario("Alvaro", Pais.brasil),
    ]
    
    //var nombres = ["Felix", "Jose","Jorge","Alvaro"]
    //var paises = ["Colombia", "Argentina","Brasil","Peru"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let view = segue.destination as? DetalleViewController
        view?.usuario = sender as? Usuario //usuarios[(self.tableView.indexPath(for: (sender as! UITableViewCell))?.row)!]
    }
    
    func mostrarDetalle(usuario: Usuario){
//        if usuario.pais ==  .colombia{
                performSegue(withIdentifier: "segueDetalle", sender: usuario)
//        }else{
//            mostrarAlerta()
//        }
    }
    
    func mostrarAlerta(){
        let alert = UIAlertController(title: "Error", message: "No disponible", preferredStyle: .alert)
        let aceptar = UIAlertAction(title: "OK", style: .default)
        alert.addAction(aceptar)
        self.present(alert, animated: true, completion: nil)
    }
}
