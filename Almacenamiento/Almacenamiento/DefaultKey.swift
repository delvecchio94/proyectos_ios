//
//  DefaultKey.swift
//  Almacenamiento
//
//  Created by Estudiante on 23/11/18.
//  Copyright © 2018 delvecchio. All rights reserved.
//

import Foundation
enum DefaultKey: String,CaseIterable {
    
    case welcome
    case nombre
    case apellido
    
    static func reset(){
        allCases.forEach{(key) in
            UserDefaults.standard.removeObject(forKey: key.rawValue)
        }
    }
}
