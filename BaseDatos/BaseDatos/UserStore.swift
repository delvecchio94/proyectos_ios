//
//  UserStore.swift
//  BaseDatos
//
//  Created by Estudiante on 24/11/18.
//  Copyright © 2018 delvecchio. All rights reserved.
//

import Foundation
import CoreData

struct UserStore{
    
    static let context = CoreDataManager.sharedContext
    
    static func buscarUsuarios() -> [User] {
        var lista: [User] = []
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        request.returnsObjectsAsFaults = false
        do{
            guard let result = try context.fetch(request) as? [NSManagedObject] else {return lista}
            result.forEach{(object) in
                let tmp: User = object as! User
                lista.append(tmp)
            }
        }catch{
            print(error)
        }
        return lista
    }
    
    static func agregarUsuario(_ nombre: String,_ apellido: String) -> Bool {
        guard let entity = NSEntityDescription.entity(forEntityName: "User", in: context) else {
            return false
        }
        let usuario = NSManagedObject(entity: entity, insertInto: context)
        usuario.setValue(nombre, forKey: "nombre")
        usuario.setValue(apellido, forKey: "apellido")
        do{
            try context.save()
        }catch{
            print(error)
            return false
        }
        return true
    }
    
    static func eliminarUsuario(_ usuario: User) -> Bool {
        context.delete(usuario)
        do{
            try context.save()
        }catch{
            print(error)
            return false
        }
        return true
    }
}
