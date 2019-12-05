//
//  ViewController.swift
//  snowCalls
//
//  Created by Gabriela Shaooli on 2019-11-27.
//  Copyright © 2019 Gabriela Shaooli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
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
        
        for phoneNumber in phoneNumbers {
            print(phoneNumber)
            
            // Traslated phone number Variable
            var phone = ""
            
            for charcater in input {
                                    
                    switch charcater {
                    case "2", "A", "a", "B", "b", "C", "c":
                        phone += "2"
                    case "3", "D", "d", "E", "e", "F", "f":
                        phone += "3"
                    case "4", "G","g", "H", "h", "I", "i":
                        phone += "4"
                    case "5", "J", "j", "K", "k", "L", "l":
                        phone += "5"
                    case "6", "M", "m", "N", "n", "O", "o":
                        phone +=  "6"
                    case "7", "P", "p", "Q", "q", "R", "r", "S", "s":
                        phone += "7"
                    case "8", "T", "t", "U", "u", "V", "v" :
                        phone += "8"
                    case "9", "W", "w", "X", "x", "Y", "y", "Z", "z":
                        phone += "9"
                    case "-":
                        phone += ""
                    default:
                        phone += String(charcater)
                        
                    }
                    // Add dash
                    if phone.count == 3 || phone.count == 7 {
                        phone += "-"
                    }
                    
                }
                
            }
        }
    }
