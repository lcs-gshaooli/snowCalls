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
        
        // guard if no imput is provide
        guard let input = inputInfo.text, input.count > 0 else {
            outputPhone.text = "Please enter phone numbers to convert"
            return
        }
        
        // Variable
        var outputPhone = ""
        if outputPhone.count < 10 {
            
            for charcater in input {
                
                switch charcater {
                case "1":
                    outputPhone += "1"
                case "2", "A", "a", "B", "b", "C", "c":
                    outputPhone += "2"
                case "3", "D", "d", "E", "e", "F", "f":
                    outputPhone += "3"
                case "4", "G","g", "H", "h", "I", "i":
                    outputPhone += "4"
                case "5", "J", "j", "K", "k", "L", "l":
                    outputPhone += "5"
                case "6", "M", "m", "N", "n", "O", "o":
                    outputPhone +=  "6"
                case "7", "P", "p", "Q", "q", "R", "r", "S", "s":
                    outputPhone += "7"
                case "8", "T", "t", "U", "u", "V", "v" :
                    outputPhone += "8"
                case "9", "W", "w", "X", "x", "Y", "y", "Z", "z":
                    outputPhone += "9"
                case "0":
                    outputPhone += "0"
                case "\n":
                    outputPhone += "\n"
                default: outputPhone = ""
                    break
                }
                
                if outputPhone.count == 3 || outputPhone.count == 7 {
                    outputPhone += "-"
                    }
                    
                }
                
                print(outputPhone)
                
            }
        }
}
