//
//  CollectionViewDS.swift
//  Test
//
//  Created by Estudiante on 27/10/18.
//  Copyright © 2018 delvecchio. All rights reserved.
//

import Foundation
import UIKit

extension CollectionViewController {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return collectionData.count
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let coll = collectionView.dequeueReusableCell(withReuseIdentifier: "Coll", for: indexPath)
        return coll
    }
     
}
