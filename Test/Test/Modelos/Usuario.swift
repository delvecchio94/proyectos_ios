//
//  Usuario.swift
//  Test
//
//  Created by Estudiante on 2/11/18.
//  Copyright © 2018 delvecchio. All rights reserved.
//

import Foundation
import UIKit

struct Usuario {
    var nombre: String = ""
    var pais:Pais
    
    init(_ nombre: String,_ pais: Pais) {
        self.nombre = nombre
        self.pais = pais
    }
}
