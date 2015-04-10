//
//  VolumetricConverterViewController.swift
//  UCISwiftConverter
//
//  Created by justin on 2015/01/13.
//  Copyright (c) 2015年 Justin. All rights reserved.
//
//  Added to homework project 2015-04-09 Adam Cherochak
//
/* 
    Gallons/Liters Conversion
    1 US gallon = 3.78541178 Liters  |  multiply gallons by 3.78541178
    1 Liter = 0.264172052 US gallon  |  multiply liters by 0.264172052
*/

import UIKit

class VolumetricConverterViewController: UIViewController, UITextFieldDelegate {
    // set constant conversion factors
    let gallonsConversionFactor = 0.264172052
    let litersConversionFactor = 3.78541178
    
    //2.i
    @IBOutlet weak var gallonsTextField: UITextField!
    @IBOutlet weak var litersTextField: UITextField!
    
    
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

    func calculateGallons(litersAmount: Double) -> String
    {
        
        return "\(litersAmount * gallonsConversionFactor)"
        
    }
    
    func calculateLiters(gallonsAmount: Double) -> String
    {
        
        return "\(gallonsAmount * litersConversionFactor)"
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        
        if textField == gallonsTextField
        {
            
            let gallonsAmount: Double = (gallonsTextField.text as NSString).doubleValue
            
            litersTextField.text = calculateLiters(gallonsAmount)
        }
            
        else
            
        if textField == litersTextField
        {
            let litersAmount: Double = (litersTextField.text as NSString).doubleValue
            
            gallonsTextField.text = calculateGallons(litersAmount)
            
        }
        
        return true
        
    }
    
}

