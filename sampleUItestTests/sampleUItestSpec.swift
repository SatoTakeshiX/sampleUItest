//
//  sampleUItestTests.swift
//  sampleUItestTests
//
//  Created by satoutakeshi on 2015/10/21.
//  Copyright © 2015年 satoutakeshi. All rights reserved.
//

import Quick
import Nimble
import sampleUItest

class SampleSpec: QuickSpec {
    override func spec() {
    
        var viewController : ViewController!
        beforeEach{
            //let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle());
            viewController = UIStoryboard(name: "Main", bundle: NSBundle(forClass: ViewController.self)).instantiateInitialViewController() as! ViewController
        }
        
        describe(".viewDidLoad()"){
            beforeEach{
                // Method #1: Access the view to trigger ViewController.viewDidLoad().
                let _ =  viewController.view
            }
            it("sets the count label to counter") {
                // Since the label is only initialized when the view is loaded, this
                // would fail if we didn't access the view in the `beforeEach` above.
                expect(viewController.countLabel.text).to(equal("counter"))
            }
        }
        
        describe("the 'tap' button") {
            beforeEach{
                viewController.beginAppearanceTransition(true, animated: false)
                viewController.endAppearanceTransition()
            }
            it("increments the count label when tapped") {

                //カウントボタンを取得
                viewController.countButton?.sendActionsForControlEvents(UIControlEvents.TouchUpInside)
                expect(viewController.countLabel?.text).to(equal("0"))
                
            }
        }
    }
}
