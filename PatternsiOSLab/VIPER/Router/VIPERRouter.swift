//
//  VIPERRouter.swift
//  PatternsiOSLab
//
//  Created by Ильдар Залялов on 11/02/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import Foundation
import UIKit

class VIPERRouter: VIPERRouterInput {
    
    weak var view: UIViewController!
    
    func showAlert() {
        
        let alert = UIAlertController(title: "Alert", message: "Wow!", preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "Ok", style: .default) { (action) in
            
        }
        
        alert.addAction(okButton)
        view.present(alert, animated: true, completion: nil)
    }
}
