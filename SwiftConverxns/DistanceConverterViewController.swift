//
//  DistanceConverterViewController.swift
//  UCISwiftConverter
//
//  Created by justin on 2015/01/13.
//  Copyright (c) 2015年 Justin. All rights reserved.
//
//  Added to homework project 2015-04-09 Adam Cherochak
//
/* 
    Distance Converter
    1 km = 0.62137 miles
*/

import UIKit

class DistanceConverterViewController: UIViewController, UITextFieldDelegate {
    // set constant conversion factors
    let milesConversionFactor = 0.62137  // 1 km = 0.62137 mi
    let kilometersConversionFactor = 1.60934 // 1 mi = 1.60934 km
    
    //2.i
    @IBOutlet weak var milesTextField: UITextField!
    @IBOutlet weak var kilometersTextField: UITextField!
    
    
    // 2.e, 2.f
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {

        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
    }

    required init(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func calculateMiles(kilometersAmount: Double) -> String
    {
        
        return "\(kilometersAmount * milesConversionFactor)"
        
    }
    
    func calculatekilometers(milesAmount: Double) -> String
    {
        
        return "\(milesAmount * kilometersConversionFactor)"
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        
        if textField == milesTextField
        {
            
            let milesAmount: Double = (milesTextField.text as NSString).doubleValue
            
            kilometersTextField.text = calculatekilometers(milesAmount)
        }
            
        else
            
        if textField == kilometersTextField
        {
            let kilometersAmount: Double = (kilometersTextField.text as NSString).doubleValue
            
            milesTextField.text = calculateMiles(kilometersAmount)
            
        }
        
        return true
        
    }
    
}

