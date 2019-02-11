//
//  MVVMViewModel.swift
//  PatternsiOSLab
//
//  Created by Ильдар Залялов on 11/02/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import Foundation

class MVVMViewModel: MVVMViewModelDelegate {
    
    var name: String? {
        didSet {
            didChangeNameHandler?(self)
        }
    }
    
    var dataManager: DataManagerProtocol!
    
    var didChangeNameHandler: ((MVVMViewModelDelegate) -> ())?
    
    required init(dataManager: DataManagerProtocol) {
        self.dataManager = dataManager
    }
    
    func showName() {
        
        let newName = dataManager.obtainNames().randomElement()
        name = newName
    }
}
