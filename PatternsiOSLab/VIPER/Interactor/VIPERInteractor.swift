//
//  VIPERInteractor.swift
//  PatternsiOSLab
//
//  Created by Ильдар Залялов on 11/02/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import Foundation

class VIPERInteractor: VIPERInteractorInput {
    
    weak var output: VIPERInteractorOutput!
    var dataManager: DataManagerProtocol!
    
    func obtainNewName() {
        
        let newName = dataManager.obtainNames().randomElement()
        output.didFinishObtainingName(newName)
    }
}
