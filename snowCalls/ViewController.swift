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
        inputInfo.text = ""
        
        // guard if no imput is provide
        guard let input = inputInfo.text, input.count > 0 else {
            outputPhone.text = "Please enter phone numbers to convert"
            return
    }
    
   
        }
        
}

