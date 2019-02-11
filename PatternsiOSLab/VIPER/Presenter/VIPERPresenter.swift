//
//  VIPERPresenter.swift
//  PatternsiOSLab
//
//  Created by Ильдар Залялов on 11/02/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import Foundation

class VIPERPresenter: VIPERViewOutput, VIPERInteractorOutput {
    
    weak var view: VIPERViewInput!
    var interactor: VIPERInteractorInput!
    var router: VIPERRouterInput!
    
    //MARK: - VIPERViewOutput -
    
    func setupInitialState() {
        
    }
    
    func didPressedChangeNameButton() {
        interactor.obtainNewName()
        router.showAlert()
    }
    
    //MARK: - VIPERInteractorOutput -
    
    func didFinishObtainingName(_ name: String?) {
        view.showName(name)
    }
}
