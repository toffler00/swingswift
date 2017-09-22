//
//  caculatorupgradeViewController.swift
//  MyCalculator
//
//  Created by ilhan won on 2017. 9. 20..
//  Copyright © 2017년 ilhan won. All rights reserved.
//

import UIKit

class caculatorupgradeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet var displayLabel:UILabel!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var waitingNum: Double?
    {
        didset{
            displayNum = nil
            self.displayLabel.text = "0"
        }
    }
    var displayNum: Double?
    {
        willset{
            self.displayLabel.text = String(newValue)
        }
    }
    var inputNum: String?
    var digit: Int = 10
    let operation:[String] = ["+","-","*","/","="]
    
    
   @IBAction func btn1Click(_ sender: UIButton)
   {
    let inputNum = Double(sender.tag)
    if let newNumber = displayNum
    {
        displayNum = (inputNum * digit) + inputNum
    }else{
    displayNum = inputNum
    }
}
    let operationLabel:[String] = ["+","-","*","/"]
@IBAction func Operationbtn(btn: UIButton)
{
    if let displayNum = displayNum
    {
        waitingNum = displayNum
    }
    guard let opSymbol = sender.titleLabel?.text.text else { return }
    switch opSymbol {
        case "/":
        operation = divide
        case "x":
        operation = multy
        case "+":
        operation = sum
        case "-":
        operation = minus
        case "=":
        print(
    }
}

@IBAction func ACbtn(btn: UIButton)
{
    
}
/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destinationViewController.
 // Pass the selected object to the new view controller.
 }
 */

}
