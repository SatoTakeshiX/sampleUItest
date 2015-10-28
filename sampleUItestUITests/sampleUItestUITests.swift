
//
//  sampleUItestUITests.swift
//  sampleUItestUITests
//
//  Created by satoutakeshi on 2015/10/21.
//  Copyright © 2015年 satoutakeshi. All rights reserved.
//

import XCTest
import sampleUItest

class sampleUItestUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
       // XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        app.launch()
        app.pickerWheels["\u{6442}\u{6c0f}0\u{5ea6}"].tap()
        //ピッカービューはtap()メソッドではピッカービューではアプリ落ちてしまう。
        //adjustToPickerWheelValue()メソッドで値を変える
        app.pickerWheels["\u{6442}\u{6c0f}0\u{5ea6}"].adjustToPickerWheelValue("\u{6442}\u{6c0f}1\u{5ea6}")
        
        XCTAssertEqual(app.staticTexts["fahrenheitLabel"].label, "華氏33度")
        
        app.pickerWheels["摂氏0度"].adjustToPickerWheelValue("摂氏2度")

 
        XCTAssertEqual(app.staticTexts["fahrenheitLabel"].label, "華氏35度")
        
    }
    
    func testChangeBackground(){

        let button = XCUIApplication().buttons["button"]
        button.tap()
        XCTAssertEqual(XCUIApplication().staticTexts["counterLabel"].label, "0")
        button.tap()
        XCTAssertEqual(XCUIApplication().staticTexts["counterLabel"].label, "1")
        
        
    }
    
    func testdemo(){
        
        let app = XCUIApplication()
        app.launch()
        let button = app.buttons["button"]
        button.tap()
        button.tap()
        button.tap()
        button.doubleTap()
        button.tap()
        app.pickerWheels["摂氏0度"].tap()
       // app.pickerWheels["摂氏1度"].tap()
       // app.pickerWheels["摂氏2度"].tap()
        
    }
}
