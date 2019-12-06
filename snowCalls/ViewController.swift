//
//  ViewController.swift
//  snowCalls
//
//  Created by Gabriela Shaooli on 2019-11-27.
//  Copyright © 2019 Gabriela Shaooli. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    // MARK:
    //Outlets
    @IBOutlet weak var inputInfo: UITextView!
    
    @IBOutlet weak var outputPhone: UITextView!
    
    var builtNumber = ""
    
    // MARK
    // Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Do any additional setup after loading the view.
               
               // Give the focus to the input textview when the program begins
               inputInfo.becomeFirstResponder()
               
               // Make this class (the view controller) be the delegate for the input text view
               inputInfo.delegate = self

    }
    
    // add button
    @IBAction func convert(_ sender: Any) {
        
        // Input
        // inputInfo.text = ""
        
        // Clear
        
        // guard if no imput is provide
        guard let input = inputInfo.text, input.count > 0 else {
            outputPhone.text = "Please enter phone numbers to convert"
            return
        }
        
        // 2. Process and output
        
        // Split given list of numbers into individual lines
        let phoneNumbers = input.split(separator: "\n")
        
        // Loop over each line
        for phoneNumber in phoneNumbers {
            print(phoneNumber)
            
            // Traslated phone number Variable
            var outputPhoneNumber = ""
            
            // Loop over each character in this phone number
            for charcater in phoneNumber {
                
                switch charcater {
                case "2", "A", "a", "B", "b", "C", "c":
                    outputPhoneNumber += "2"
                case "3", "D", "d", "E", "e", "F", "f":
                    outputPhoneNumber += "3"
                case "4", "G","g", "H", "h", "I", "i":
                    outputPhoneNumber += "4"
                case "5", "J", "j", "K", "k", "L", "l":
                    outputPhoneNumber += "5"
                case "6", "M", "m", "N", "n", "O", "o":
                    outputPhoneNumber +=  "6"
                case "7", "P", "p", "Q", "q", "R", "r", "S", "s":
                    outputPhoneNumber += "7"
                case "8", "T", "t", "U", "u", "V", "v" :
                    outputPhoneNumber += "8"
                case "9", "W", "w", "X", "x", "Y", "y", "Z", "z":
                    outputPhoneNumber += "9"
                case "-":
                    outputPhoneNumber += ""
                default:
                    outputPhoneNumber += String(charcater)
                    
                }
                // Add dash
                if outputPhoneNumber.count == 3 || outputPhoneNumber.count == 7 {
                    outputPhoneNumber += "-"
                }
                
            }
            
            // print the output phone number
            print(outputPhoneNumber)
            outputPhone.text += outputPhoneNumber + "\n"
            
            // Called when the contents of the text view are changed.
            func textViewDidChange(_ textView: UITextView) {
                // Reset the output text view
                outputPhone.text = ""
                // Give the foucous to the input textView when the program begins
                inputInfo.text = ""
                outputPhoneNumber = ""
                inputInfo.becomeFirstResponder()// Se focous on input field
            
        }
    }
}
}
