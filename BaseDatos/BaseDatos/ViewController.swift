//
//  ViewController.swift
//  BaseDatos
//
//  Created by Estudiante on 24/11/18.
//  Copyright © 2018 delvecchio. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var nombre: UITextField!
    @IBOutlet weak var apellido: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func agregar(_ sender: Any) {
        if UserStore.agregarUsuario(nombre.text!, apellido.text!) {
            print("Se guardo correctamente")
        }else{
            print("No se pudo guardar el usuario")
        }
        nombre.text = nil
        apellido.text = nil
    }
    
    @IBAction func listar(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "ListaUsuarioViewController") as! ListaUsuarioViewController
        vc.listaUsuarios = UserStore.buscarUsuarios()
        self.show(vc, sender: nil)
    }
}
