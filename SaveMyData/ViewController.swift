//
//  ViewController.swift
//  SaveMyData
//
//  Created by saumya on 22/06/16.
//  Copyright © 2016 saumya. All rights reserved.
//

import UIKit

//MARK: DATA set
struct defaultsKeys {
    static let keyOne = "firstStringKey"
    static let keyTwo = "secondStringKey"
    static let switchValue = "switch"
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //MARK: Save Data
        let defaults = NSUserDefaults.standardUserDefaults()
        if let switchValue = defaults.stringForKey(defaultsKeys.switchValue) {
            print(switchValue)
            // DO not save
        }else{
            defaults.setValue("Some String Value", forKey: defaultsKeys.keyOne)
            defaults.setValue("Another String Value", forKey: defaultsKeys.keyTwo)
            defaults.setValue(true, forKey: defaultsKeys.switchValue)
            defaults.synchronize()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onGetData(sender:AnyObject){
        getData()
    }
    
    //MARK: Get data
    private func getData(){
        let defaults = NSUserDefaults.standardUserDefaults()
        if let stringOne = defaults.stringForKey(defaultsKeys.keyOne) {
            print(stringOne) // Some String Value
        }
        if let stringTwo = defaults.stringForKey(defaultsKeys.keyTwo) {
            print(stringTwo) // Another String Value
        }
    }


}

