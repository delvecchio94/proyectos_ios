//
//  Usuario.swift
//  Test
//
//  Created by Estudiante on 2/11/18.
//  Copyright © 2018 delvecchio. All rights reserved.
//

import Foundation
import UIKit

public struct Usuario {
    public var nombre: String = ""
    public var pais:Pais
    
    public init(_ nombre: String,_ pais: Pais) {
        self.nombre = nombre
        self.pais = pais
    }
}
