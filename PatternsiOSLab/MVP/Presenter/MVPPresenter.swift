//
//  MVPPresenter.swift
//  PatternsiOSLab
//
//  Created by Ильдар Залялов on 11/02/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import Foundation

class MVPPresenter: MVPViewOutput {
    
    weak var view: MVPViewInput!
    var dataManager: DataManagerProtocol!
    
    func setupInitialState() {
        print("init any states")
    }
    
    func didPressedChangeNameButton() {
        
        let name = dataManager.obtainNames().randomElement()
        view.showName(name)
    }
}
