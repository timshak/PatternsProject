//
//  MVVMViewModelDelegate.swift
//  PatternsiOSLab
//
//  Created by Ильдар Залялов on 11/02/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import Foundation

protocol MVVMViewModelDelegate: AnyObject {
    var name: String? { get set }
    var didChangeNameHandler: ((MVVMViewModelDelegate) -> ())? { get set }
    
    init(dataManager: DataManagerProtocol)
    
    func showName() 
}
