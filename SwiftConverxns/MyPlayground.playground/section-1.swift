// Playground - noun: a place where people can play

import UIKit

let gallonsConversionFactor = 0.264172052
let litersConversionFactor = 3.78541178
var gallonsAmount = 3.00
var litersAmount = 3.00

// function to calculate gallons
println("Convert gallons to liters:" \(gallonsAmount*litersConversionFactor))


    
    


func calculateFahrenheit(celsiusTemp: Double) -> String
{
    
    return "\(celsiusTemp * 9 / 5 + 32)"
    
}

func textFieldShouldReturn(textField: UITextField) -> Bool
{
    
    if textField == fahrenheitTextField
    {
        
        let fahrenheitTemp: Double = (fahrenheitTextField.text as NSString).doubleValue
        
        celsiusTextField.text = calculateCelsius(fahrenheitTemp)
        
    }
    else
        if textField == celsiusTextField
        {
            
            let celsiusTemp: Double = (celsiusTextField.text as NSString).doubleValue
            
            fahrenheitTextField.text = calculateFahrenheit(celsiusTemp)
            
    }
    
    return true
    
}
