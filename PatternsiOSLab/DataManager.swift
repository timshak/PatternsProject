//
//  DataManager.swift
//  PatternsiOSLab
//
//  Created by Ильдар Залялов on 11/02/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import Foundation

protocol DataManagerProtocol: AnyObject {
    
    func obtainNames() -> [String]
}

class DataManager: DataManagerProtocol {
    
    func obtainNames() -> [String] {
        return ["Sasha", "Masha", "Egor"]
    }
}
