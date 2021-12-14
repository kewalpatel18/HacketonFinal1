//
//  ViewController.swift
//  HacketonFinal
//
//  Created by Kewal Patel on 12/5/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func numbers(_ sender: UIButton) {
        label.text = label.text! + String(sender.tag-1)
        
        
    }
    
}
