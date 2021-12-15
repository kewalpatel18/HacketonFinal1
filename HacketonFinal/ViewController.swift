//
//  ViewController.swift
//  HacketonFinal
//
//  Created by Kewal Patel on 12/5/21.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen:Double = 0;
    var previousNumber:Double = 0;
    var performingMath = false
    var operation = 0;
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func numbers(_ sender: UIButton) {
        
        if performingMath == true {
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            performingMath = false
        }
        else {
            label.text = label.text! + String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            
        }
       
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        if label.text != "" && sender.tag != 11 && sender.tag != 16{
            
            previousNumber = Double(label.text!)!

            
            if sender.tag == 12 // divide
            {
                label.text = "/";

            }
            else if sender.tag == 13 // multiply
            {

                label.text = "x";

            }
            else if sender.tag == 14 // minus
            {
                label.text = "-";

            }
            else if sender.tag == 15 // plus
            {
                label.text = "+";
            }
            
            operation = sender.tag
            performingMath = true;
        }
        else if sender.tag == 16
        {
            if operation == 12
            {
            label.text = String(previousNumber / numberOnScreen)
                
            }
            else if operation == 13{
                    
            label.text = String(previousNumber * numberOnScreen)

            }
            else if operation == 14{
                
            label.text = String(previousNumber - numberOnScreen)

            }
            else if operation == 15{
                
            label.text = String(previousNumber + numberOnScreen)
            }

        }
            
            else if sender.tag == 11{
                label.text = ""
                previousNumber = 0;
                numberOnScreen = 0;
                operation = 0;
            }
        }
    
    @IBAction func plusminusButton(_ sender: UIButton) {
        if label.text == "0" || label.text == "" {
                return
            }
            if !label.text!.contains("-") {
                label.text!.insert("-", at: label.text!.startIndex)
                
            } else {
                label.text!.remove(at: label.text!.startIndex)
                
            }
        }
    
    @IBAction func advanceButtons(_ sender: UIButton) {
        if sender.tag == 17 // "("
        {
            label.text = "(";
        }
        else if sender.tag == 18 // ")"
        {
            label.text = ")";
        }
        else if sender.tag == 19 // "mc"
        {
            label.text = "mc";
        }
        else if sender.tag == 20 // "m+"
        {
            label.text = "m+";
        }
        else if sender.tag == 21 // advance
        {
            label.text = "m-";
        }
        else if sender.tag == 22 // advance
        {
            label.text = "mr";
        }
        else if sender.tag == 23 // advance
        {
            label.text = "2nd";
        }
        else if sender.tag == 24 // advance
        {
            label.text = "x2";
        }
        else if sender.tag == 25 // advance
        {
            label.text = "x3";
        }
        else if sender.tag == 26 // advance
        {
            label.text = "xy";
        }
        else if sender.tag == 27 // advance
        {
            label.text = "ex";
        }
        else if sender.tag == 28 // advance
        {
            label.text = "10x";
        }
        else if sender.tag == 29 // advance
        {
            label.text = "1/x";
        }
        else if sender.tag == 30 // advance
        {
            label.text = "2/x";
        }
        else if sender.tag == 31 // advance
        {
            label.text = "3/x";
        }
        else if sender.tag == 32 // advance
        {
            label.text = "x/x";
        }
        else if sender.tag == 33 // advance
        {
            label.text = "In";
        }
        else if sender.tag == 34 // advance
        {
            label.text = "log10";
        }
        else if sender.tag == 35 // advance
        {
            label.text = "x!";
        }
        else if sender.tag == 36 // advance
        {
            label.text = "sin";
        }
        else if sender.tag == 37 // advance
        {
            label.text = "cos";
        }
        else if sender.tag == 38 // advance
        {
            label.text = "tan";
        }
        else if sender.tag == 39 // advance
        {
            label.text = "e";
        }
        else if sender.tag == 40 // advance
        {
            label.text = "EE";
        }
        else if sender.tag == 41 // advance
        {
            label.text = "Rad";
        }
        else if sender.tag == 42 // advance
        {
            label.text = "sinh";
        }
        else if sender.tag == 43 // advance
        {
            label.text = "cosh";
        }
        else if sender.tag == 44 // advance
        {
            label.text = "tanh";
        }
        else if sender.tag == 45 // advance
        {
            label.text = "pi";
        }
        else if sender.tag == 46 // advance
        {
            label.text = "Rand";
        }
        
    }
}

