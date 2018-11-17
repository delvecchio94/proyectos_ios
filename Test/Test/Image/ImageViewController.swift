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
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "http://k33.kn3.net/taringa/2/F/6/8/1/F/coreblue/6A9.jpg")
        imagen.kf.setImage(with: url)
        sliderLabel.text = "0"
    }
    
    @IBAction func sliderDidChange(_ sender: UISlider) {
        print(sender.value)
        sliderLabel.text = "\(sender.value)"
    }
    
    @IBAction func unwindToImage(_ unwindSegue: UIStoryboardSegue) {
        let view = unwindSegue.source as! FormularioViewController
        print(view.apellido.text)
        print(view.nombre.text)
    }
}
