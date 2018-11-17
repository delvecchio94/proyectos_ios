//
//  DetalleViewController.swift
//  Test
//
//  Created by Estudiante on 2/11/18.
//  Copyright © 2018 delvecchio. All rights reserved.
//

import Foundation
import UIKit
import Models

class DetalleViewController: UIViewController{
    var usuario: Usuario?
    
    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var pais: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configurarCampos()
    }
    
    func configurarCampos(){
        nombre.text = usuario?.nombre
        pais.text = usuario?.pais.rawValue
        imagen.image = usuario?.pais.icon
    }
    
    @IBAction func tapPais(_ sender: Any) {
        let alert = UIAlertController(title: "Pais", message: usuario?.pais.rawValue, preferredStyle: .alert)
        let aceptar = UIAlertAction(title: "OK", style: .default)
        alert.addAction(aceptar)
        self.present(alert, animated: true, completion: nil)
    }
    
}
