//
//  MVPViewOutput.swift
//  PatternsiOSLab
//
//  Created by Ильдар Залялов on 11/02/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import Foundation

protocol MVPViewOutput: AnyObject {
    
    func setupInitialState()
    
    func didPressedChangeNameButton()
}
