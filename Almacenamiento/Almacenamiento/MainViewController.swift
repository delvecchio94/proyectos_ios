//
//  MainViewController.swift
//  Almacenamiento
//
//  Created by Estudiante on 23/11/18.
//  Copyright © 2018 delvecchio. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        dismiss(animated: true)
        if UserDefaults.standard.bool(forKey: DefaultKey.welcome.rawValue) {
            if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as? ViewController
            {
                present(vc, animated: true, completion: nil)
            }
        }else{
            if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WelcomeViewController") as? WelcomeViewController
            {
                show(vc, sender: nil)
                //present(vc, animated: true, completion: nil)
            }
        }
    }
    
}
