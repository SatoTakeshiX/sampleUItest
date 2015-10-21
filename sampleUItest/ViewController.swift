//
//  ViewController.swift
//  sampleUItest
//
//  Created by satoutakeshi on 2015/10/21.
//  Copyright © 2015年 satoutakeshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {

    @IBOutlet weak var countLabel: UILabel!
    var count:Int! = 0
    @IBOutlet var temperatureRange: TemperatureRange!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var celsiusPicker: UIPickerView!
    
    private let converter = UnitConverter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //ピッカービューの初期選択値設定
        let row = initialPickerRow()
        celsiusPicker.selectRow(row, inComponent: 0, animated: false)
        pickerView(celsiusPicker, didSelectRow: row, inComponent: 0)
        
    }
    
    //ピッカーの初期値設定
    func initialPickerRow() -> Int{
        return celsiusPicker.numberOfRowsInComponent(0) / 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: ピッカービューデリゲートメソッド
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let celsiusValue = temperatureRange.values[row]
        return "摂氏\(celsiusValue)度"
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        displayConvertedTemperatureForRow(row)
    }

    func displayConvertedTemperatureForRow(row: Int){
        let degreesCelsius = temperatureRange.values[row]
        temperatureLabel.text = "華氏\(converter.degreesFahrenheit(degreesCelsius))度"
    }
    @IBAction func changeBackgroundColor(sender: UIButton) {

        countLabel.text = "\(count)"
        
        count = count + 1;
    }
}

