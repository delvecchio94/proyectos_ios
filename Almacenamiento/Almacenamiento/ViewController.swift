//
//  ViewController.swift
//  Almacenamiento
//
//  Created by Estudiante on 23/11/18.
//  Copyright © 2018 delvecchio. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var nombre: UITextField!
    @IBOutlet weak var apellido: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        nombre.delegate = self
        apellido.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        nombre.text = UserDefaults.standard.string(forKey: DefaultKey.nombre.rawValue)
        apellido.text = UserDefaults.standard.string(forKey: DefaultKey.apellido.rawValue)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == nombre {
            UserDefaults.standard.set(nombre.text, forKey: DefaultKey.nombre.rawValue)
        }else if textField == apellido {
            UserDefaults.standard.set(apellido.text, forKey: DefaultKey.apellido.rawValue)
        }
    }


}
