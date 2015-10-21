//
//  TemperatureRange.swift
//  sampleUItest
//
//  Created by satoutakeshi on 2015/10/21.
//  Copyright © 2015年 satoutakeshi. All rights reserved.
//

import UIKit

class TemperatureRange: NSObject, UIPickerViewDataSource {

    //-100から100の配列
    let values = (-100...100).map{ $0 }
    
    //ピッカービューの列数を返す
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //ピッカービューの行数を返す
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return values.count
    }
    
}
