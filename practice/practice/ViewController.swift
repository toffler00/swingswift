//
//  ViewController.swift
//  practice
//
//  Created by ilhan won on 2017. 9. 21..
//  Copyright © 2017년 ilhan won. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var answerLabel: UILabel!
    @IBOutlet var collatzAnswerLB: UILabel!
    @IBOutlet var sphereVolLB: UILabel!
    @IBOutlet var leapyearLB: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        isHarshad = harshad(inputNum: 18)
        answerLabel.text = String(isHarshad)
        
        iscollatz = collatz(collatzNum: 6)
        collatzAnswerLB.text = String(iscollatz)
        
        issphereV = Double(sphereV(sphereR: 3))
        sphereVolLB.text = String(issphereV)
        
        ischeckLeap = checkLeapyear(checkYear: 2000)
        leapyearLB.text = ischeckLeap
    }
    
    var isHarshad: Bool = false
    var inputNum: Int = 0
    var resultValue: Bool = false
    
    func harshad(inputNum: Int) -> Bool
    {
        var sumValue: Int = 0
        var index: Int = 0
        var testValue: Int = inputNum
        while testValue % 10 > 0
        {
            index = testValue % 10
            sumValue += index
            testValue /= 10
        }
        if inputNum % sumValue == 0 {
            resultValue = true
        }else {
            resultValue = false
        }
        return resultValue
    }
    
    
    var iscollatz: Int = 0
    var collatzNum: Int = 0
    func collatz(collatzNum: Int) -> Int{
        var temp: Int = collatzNum
        var count: Int = 0
        while count >= 500 || temp != 1 {
            if count < 500 {
                if temp % 2 == 0 {
                    temp /= 2
                }else {
                    temp = (temp * 3) + 1
                }
                count += 1
                print(temp)
            } else {
                return -1
            }
        }
        return count
    }

    var issphereV: Double = 0
    var sphereR: Double = 0
    var sphereVolume: Double = 0
    func sphereV(sphereR : Double) -> Double
    {
        sphereVolume = (sphereR * sphereR * sphereR) / 3 * 4 * 3.14
        return sphereVolume
    }
    
    
    
    var ischeckLeap: String = ""
    var checkYear: Int = 0
    var resultLeapyear: String = ""
    func checkLeapyear(checkYear: Int) -> String
    {
        if checkYear % 4 == 0 || checkYear % 400 == 0 && checkYear % 100 != 0
        {
            self.resultLeapyear = "\(checkYear) 은 윤년이 입니다."
        }else {
        resultLeapyear = "\(checkYear)은 윤년이 아닙니다."
        }
            return resultLeapyear
    }
    
    
    
    
    

}


