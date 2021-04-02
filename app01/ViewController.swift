//
//  ViewController.swift
//  app01
//
//  Created by developer on 03.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    // task 1
    @IBOutlet var startButton: UIButton?
    @IBOutlet var infoLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapBtn() {
        let infoLabelText: String = infoLabel?.text ?? "default text"
        infoLabel?.text = infoLabelText + "\(1)"
    }
    
    
    // task 2
    @IBOutlet var labelMove: UILabel?
    @IBOutlet var btnMove: UIButton?
    
    @IBAction func moveLabel() {
        labelMove?.center.x += 3
        labelMove?.center.y += 3
    }
    
    
    // task 3
    @IBOutlet var firstValue: UITextField?
    @IBOutlet var secondValue: UITextField?
    @IBOutlet var result: UILabel?
    
    @IBOutlet var btnPlus: UIButton?
    @IBOutlet var btnMinus: UIButton?
    @IBOutlet var btnMult: UIButton?
    @IBOutlet var btnDiv: UIButton?
    
    @IBAction func culc(nBtn: UIButton) {
        let name = nBtn.currentTitle
        var resultVal: Float = 0.00;
        let firstVal: String? = firstValue?.text
        let secondVal: String? = secondValue?.text
        
        if let firstVal = firstVal, let secondVal = secondVal,
           let numericFirstVal = Float(firstVal), let numericSecondVal = Float(secondVal){
                switch name {
                case "+":
                    resultVal = numericFirstVal + numericSecondVal
                case "-":
                    resultVal = numericFirstVal - numericSecondVal
                case "*":
                    resultVal = numericFirstVal * numericSecondVal
                case "/":
                    resultVal = numericFirstVal / numericSecondVal
                default:
                    resultVal = 0.0001
                }
        }
        
        result?.text = "Result: \(resultVal)"
    }
    
}

