//
//  ViewController.swift
//  testGit
//
//  Created by SIMA on 2017. 11. 24..
//  Copyright © 2017년 FooPl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var square : UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        square.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        square.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        square.setTitle("TEST BUTTON", for: .normal)
        square.setTitleColor(.white, for: .normal)
        self.view.addSubview(square)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

