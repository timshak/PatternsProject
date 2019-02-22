//
//  ReusableView.swift
//  VIPERCalc
//
//  Created by Тимур Шакиров on 22/02/2019.
//  Copyright © 2019 Тимур Шакиров. All rights reserved.
//

import UIKit

/// For instantiate view controller from storyboard
protocol ReusableView: class {
}

extension ReusableView {
    
    /// Identifier is name of view controller
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UIViewController: ReusableView{
}

extension UIStoryboard {
    func instantiateViewController<T>() -> T where T: ReusableView {
        return instantiateViewController(withIdentifier: T.reuseIdentifier) as! T
    }
}

