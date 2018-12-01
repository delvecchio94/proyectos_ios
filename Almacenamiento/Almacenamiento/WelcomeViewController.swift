//
//  WelcomeViewController.swift
//  Almacenamiento
//
//  Created by Estudiante on 23/11/18.
//  Copyright © 2018 delvecchio. All rights reserved.
//

import Foundation
import UIKit


class WelcomeViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saltar(_ sender: Any) {
        dismiss(animated: true)
        UserDefaults.standard.set(true, forKey: DefaultKey.welcome.rawValue)
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as? ViewController
        {
            present(vc, animated: true, completion: nil)
        }
    }
    
}
