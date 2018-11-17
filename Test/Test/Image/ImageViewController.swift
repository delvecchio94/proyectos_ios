//
//  ImageViewController.swift
//  Test
//
//  Created by Estudiante on 16/11/18.
//  Copyright © 2018 delvecchio. All rights reserved.
//

import Foundation
import Kingfisher
import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var imagen: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "http://k33.kn3.net/taringa/2/F/6/8/1/F/coreblue/6A9.jpg")
        imagen.kf.setImage(with: url)
    }
    
}
