//
//  UnitConverter.swift
//  sampleUItest
//
//  Created by satoutakeshi on 2015/10/21.
//  Copyright © 2015年 satoutakeshi. All rights reserved.
//

import UIKit

class UnitConverter: NSObject {
    
    func degreesFahrenheit(degreesCelsius: Int) -> Int{
        return Int(1.8 * Float(degreesCelsius) + 32.0)
    }

}
