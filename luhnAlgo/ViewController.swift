//
//  ViewController.swift
//  luhnAlgo
//
//  Created by Mir Moazam Abass on 11/9/18.
//  Copyright © 2018 mozz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var invalidIDLabel: UILabel!
    
    var inputString = ""
    var inputNumber = Int()
    var array : [Character] = []
    var intArray : [Int] = []
    var isTrue = false
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        invalidIDLabel.isHidden = true
    }

    @IBAction func send(_ sender: Any)
    {
       
        if checkLuhn() == true
        {
     performSegue(withIdentifier: "change", sender: self)
        }
      else
        {
           print("please print valid id")
            invalidIDLabel.isHidden = false
        }
    }
    
    
  
    
    func checkLuhn() -> Bool
    {
        // Variables
        var finalSum = 0
        var sumOne : Int = 0
        var sumTwo = 0
        inputString = textField.text!

        // Makes an array from the input in the text field
        let digits = textField.text!.compactMap{Int(String($0))}
        intArray = digits
        
        if textField.text?.count == 4
        {
            // Double every sencond number from the right and add them
            for i in stride(from: intArray.count - 2, through: 0, by: -2)
            {
                var newNum : Int = intArray[i] * 2
                print(newNum)
                
                if newNum  > 9
                {
                    let ones =  newNum % 10
                    newNum = 1 + ones
                }
                
                sumOne += newNum
            }
            // Add every alternate number
            for i in stride(from: intArray.count - 1, through: 0, by: -2)
            {
                let newNum : Int = intArray[i]
                print(newNum)
                sumTwo += newNum
                print(sumTwo)
            }
            
            // Add the sums and take mod 10
            finalSum = sumOne + sumTwo
            isTrue = (finalSum % 10) == 0
            print(isTrue)
        }
        
        else
        {
            print("Please enter a valid 4 digit id")
        }
        return isTrue
    }

}

