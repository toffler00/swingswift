//
//  ViewController.swift
//  practice0922
//
//  Created by ilhan won on 2017. 9. 22..
//  Copyright © 2017년 ilhan won. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var sphereVolLB: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        sphereVolLB.text = String(sphereVol(example: 3, index: 3))
    
    }
    var issphereV: Double = 0
    var sphereR: Double = 0
    var sphereVolume: Double = 0
    let pi: Double = 3.14
    func sphereVol(example: Double, index : Int) -> Double
    {
        issphereV = 4 / 3 * pi * squareFunc(inputNum: example, squareCount: index)
        return issphereV
    }

//    
//    var inputNum: Double = 0
//    var squareCount: Int = 0
    
    func squareFunc(inputNum: Double, squareCount: Int) -> Double {
        var squareValue: Double = 1
        for _ in 1...squareCount
        {
            squareValue *= inputNum
            print(squareValue)
        }
        return squareValue
    
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

