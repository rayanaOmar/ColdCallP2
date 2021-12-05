//
//  ViewController.swift
//  ColdCallP2
//
//  Created by admin on 05/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    let names: [String] = ["rayana", "Deem", "Sama", "Yazan", "Aleen", "Naif"]
    
    
    @IBAction func coldCallButton(_ sender: UIButton) {
        let number = Int.random(in: 1...5)
        nameLabel.text = names.randomElement()!
        //the unber start randomly
        numberLabel.text = String(number)
        switch number {
            //if the number 1 or 2 the color will be red
        case 1...2: numberLabel.textColor = UIColor.systemRed
            //if the number 3 or 4 the color will be orang
        case 3...4: numberLabel.textColor = UIColor.systemOrange
            //otherwise the color will be green (5)
        default: numberLabel.textColor = UIColor.systemGreen
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Ready?"
        numberLabel.text = ""
        // Do any additional setup after loading the view.
    }
}

