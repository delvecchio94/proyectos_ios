//
//  Pais.swift
//  Test
//
//  Created by Estudiante on 3/11/18.
//  Copyright © 2018 delvecchio. All rights reserved.
//

import Foundation
import UIKit

public enum Pais: String{
    
    case colombia = "Colombia"
    case israel = "Israel"
    case brasil = "Brasil"
    case argentina = "Argentina"
    
    public var icon: UIImage? {
        switch self {
        case .colombia:
            return #imageLiteral(resourceName: "colombia")
        case .israel:
            return #imageLiteral(resourceName: "israel.png")
        case .brasil:
            return #imageLiteral(resourceName: "brasil")
        case .argentina:
            return #imageLiteral(resourceName: "argentina.png")
        }
    }
}
