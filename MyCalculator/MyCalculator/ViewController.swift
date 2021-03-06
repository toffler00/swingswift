//
//  ViewController.swift
//  MyCalculator
//
//  Created by ilhan won on 2017. 9. 11..
//  Copyright © 2017년 ilhan won. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet var displayLabel:UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var Inputnum1: String = ""
    var Inputnum2: String = ""
    var resultvalue: Int = 0
    var oper: String = ""
    
    
    @IBAction func btn1Click(btn: UIButton)
    {
        if oper == ""
        {
            if displayLabel.text == "0"
            {
                Inputnum1 = btn.titleLabel!.text!
            }else
            {
                Inputnum1 += btn.titleLabel!.text!
            }
            
            displayLabel.text = Inputnum1
        }else
        {
            if displayLabel.text == "0"
            {
                Inputnum2 = btn.titleLabel!.text!
            }else
            {
                Inputnum2 += btn.titleLabel!.text!
            }
            displayLabel.text = Inputnum2
        }
        
    }
    
    @IBAction func Operationbtn(btn: UIButton)
    {
        if Inputnum2 == ""
        {
             oper = (btn.titleLabel?.text!)!
        }else {
            if oper == "+"
            {
                resultvalue = Int(Inputnum1)! + Int(Inputnum2)!
                displayLabel.text = String(resultvalue)
            }
            if oper == "-"
            {
                resultvalue = Int(Inputnum1)! - Int(Inputnum2)!
                displayLabel.text = String(resultvalue)
            }
            if oper == "x"
            {
                resultvalue = Int(Inputnum1)! * Int(Inputnum2)!
                displayLabel.text = String(resultvalue)
            }
            if oper == "/"
            {
                resultvalue = Int(Inputnum1)! / Int(Inputnum2)!
                displayLabel.text = String(resultvalue)
            }
            Inputnum1 = String(resultvalue)
            Inputnum2 = ""
        }
    }
    
    @IBAction func Caculatorbtn(btn: UIButton)
    {
        let someDictionary: [String: Operation] = [
            "+" : Operation.add,
            "-" : Operation.subtract,
            "*" : Operation.multiply,
            "/" : Operation.divide,
]
        
        func performOperation(num1: Int, num2: Int, oper: OperationC) -> Int {
            switch oper {
            case "+":
                resultvalue = Int(Inputnum1)! + Int(Inputnum2)!
                displayLabel.text = String(resultvalue)
            case "-":
                resultvalue = Int(Inputnum1)! - Int(Inputnum2)!
                displayLabel.text = String(resultvalue)
            case "x":
                resultvalue = Int(Inputnum1)! * Int(Inputnum2)!
                displayLabel.text = String(resultvalue)
            case "/":
                if Inputnum2 != "0" {
                    resultvalue = Int(Inputnum1)! / Int(Inputnum2)!
                    displayLabel.text = String(resultvalue)
                }
                displayLabel.text = "오류"
            default:
                displayLabel.text = Inputnum1

        }
        switch oper {
        case "+":
            resultvalue = Int(Inputnum1)! + Int(Inputnum2)!
            displayLabel.text = String(resultvalue)
        case "-":
            resultvalue = Int(Inputnum1)! - Int(Inputnum2)!
            displayLabel.text = String(resultvalue)
        case "x":
            resultvalue = Int(Inputnum1)! * Int(Inputnum2)!
            displayLabel.text = String(resultvalue)
        case "/":
            if Inputnum2 != "0" {
            resultvalue = Int(Inputnum1)! / Int(Inputnum2)!
            displayLabel.text = String(resultvalue)
            }
            displayLabel.text = "오류"
        default:
            displayLabel.text = Inputnum1
        }
        Inputnum1 = String(resultvalue)
        
    }
    @IBAction func ACbtn(btn: UIButton)
    {
        Inputnum1 = ""
        Inputnum2 = ""
        oper = ""
        displayLabel.text = "0"
    }
    
}
