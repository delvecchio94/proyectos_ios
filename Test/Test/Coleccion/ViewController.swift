//
//  ViewController.swift
//  Test
//
//  Created by Estudiante on 27/10/18.
//  Copyright © 2018 delvecchio. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var buttom: UIButton!
    
    @IBOutlet weak var field: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func cambiarLabel(_ sender: Any) {
        label.text = field.text
        field.text = nil
    }
    
}

