//
//  model..swift
//  Game from 0
//
//  Created by bsamh on 05/12/2023.
//

import UIKit
import RealityKit
import Combine
import CloudKit



class model {
    var ModelName: String
    var image: UIImage
    var modelEntity: ModelEntity?
    
    private var cancellable: AnyCancellable? = nil
    
    init(ModelName: String){
        self.ModelName = ModelName
        
        self.image = UIImage(named: ModelName)!
        
        let filename = ModelName + ".usdz"
        self.cancellable = ModelEntity.loadModelAsync(named: filename).sink(receiveCompletion: { loadCompletion in
            // handle our error
            print("DEBUG: Unable to load modelEntity for ModelName: \(self.ModelName)")
        } , receiveValue: {modelEntity in
            // Get our modelEntity
            self.modelEntity = modelEntity
            print("DEBUG: Successfully loaded modelEntity for ModelName: \(self.ModelName)")
            
        })
    }
}

