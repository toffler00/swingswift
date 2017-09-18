//
//  ViewController.swift
//  자판기
//
//  Created by ilhan won on 2017. 9. 16..
//  Copyright © 2017년 ilhan won. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var totalprice: Int = 0
    var typeprice: Int = 0
    var celestialprice: Int = 0
    var spacename: String = ""
    var distance: String = ""
    var type: String = ""
    var acoount: Int = 0
    var money: Int = 0
    var change: Int = 0
    
    @IBOutlet var DisplayLabel: UILabel!
    @IBOutlet weak var PriceLabel: UILabel!
    @IBOutlet weak var DistanceLabel: UILabel!
    @IBOutlet weak var AccountLabel: UILabel!
    @IBOutlet weak var ChangeLabel: UILabel!
    @IBAction func Choicebtn(btn: UIButton)
    {
        spacename = (btn.titleLabel?.text!)!
        if spacename == "Jupiter"
        {
            celestialprice = 630000000
            distance = "6억3천만Km"
            DistanceLabel.text = distance
        }else if spacename == "Andromeda"
        {
            celestialprice = 2500000000
            distance = "250만광년"
            DistanceLabel.text = distance
        }else
        {
            celestialprice = 38300000
            distance = "38만3천Km"
            DistanceLabel.text = distance
        }
        DistanceLabel.text = distance
    }
    @IBAction func Triptype(btn: UIButton)
    {
        type = (btn.titleLabel?.text!)!
        if type == "편도"
        {
            typeprice = 400000
        }else{
            typeprice = 1000000
        }
        DisplayLabel.text = type
    }
    @IBAction func Accountbtn(btn: UIButton)
    {
        money = Int((btn.titleLabel?.text)!)!
        acoount += money * 10000000
        AccountLabel.text = String(acoount)
    }
    @IBAction func Dicisionbtn(btn: UIButton)
    {
        if DisplayLabel.text == ""
        {
            DisplayLabel.text = "먼저 목적지를 선택하세요."
            DistanceLabel.text = ""
        }else
            if spacename == "Jupiter"
            {
                DisplayLabel.text = "이제 목성은 당신의 것입니다...안녕히..."
            }else
                if spacename == "Andromeda"
                {
                    DisplayLabel.text = "안드로메다로 가는군요...가십시오. 가서 다 가지십시오"
                }else{
                    DisplayLabel.text = "가까운 달은 갈만하죠. 아직 주인이 없으므로 밟으면 내땅입니다. 화이팅~!"
        }
        totalprice = celestialprice + typeprice
        change = acoount - totalprice
        ChangeLabel.text = String(change)
        PriceLabel.text = (String(totalprice) + "원")
    }
    @IBAction func Returnbtn(btn: UIButton)
    {
        spacename = ""
        distance = ""
        type = ""
        DistanceLabel.text = ""
        DisplayLabel.text = ""
        PriceLabel.text = ""
    }
}

