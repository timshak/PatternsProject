//
//  DoubleWithComma.swift
//  MVPCalc
//
//  Created by Тимур Шакиров on 17/02/2019.
//  Copyright © 2019 Тимур Шакиров. All rights reserved.
//

import Foundation

extension Double {
    
    init?(stringWithComma: String) {
        let formatedString = stringWithComma.replacingOccurrences(of: ",", with: ".")
        self.init(formatedString)
    }
    
}
