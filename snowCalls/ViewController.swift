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
        
        for charcater in input {
            
            switch charcater {
            case "1":
                outputPhone += "1"
            case "A", "B", "C" :
                outputPhone += "2"
            case "D", "E", "F" :
                outputPhone += "3"
            case "G", "H", "I" :
                outputPhone += "4"
            case "J", "K", "L" :
                outputPhone += "5"
            case "M", "N", "O" :
                outputPhone +=  "6"
            case "P", "Q", "R", "S" :
                outputPhone += "7"
            case "T", "U", "V" :
                outputPhone += "8"
            case "W", "X", "Y", "Z" :
                outputPhone += "9"
            case "0":
                outputPhone += "0"
            default:
                break
            }
            
        }
        
        
        
        
    }
}
