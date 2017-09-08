//
//  ViewController.swift
//  Cold Call
//
//  Created by Olivier Butler on 07/09/2017.
//  Copyright © 2017 Olivier Butler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var last:Int?
    let namesArr = ["Rick","Summer","Jerry","Morty","Beth","Tammy","Bird Person"]
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numLabel: UILabel!
    
    @IBAction func coldCallButton(_ sender: UIButton) {
        let randomChoice = randomNum(range: namesArr.count)
        let randomColNum = randomNum(col:true) + 1
        let col:UIColor!
        switch randomColNum{
        case  1, 2:
            col = UIColor.red
        case  3, 4:
            col = UIColor.orange
        default:
            col = UIColor.green
        }
        numLabel.isHidden = false
        numLabel.text = String(randomColNum)
        numLabel.textColor = col
        nameLabel.text = namesArr[randomChoice]
    }
    
    func randomNum (range:Int = 5, col:Bool = false)->Int{
        var random:Int!
        if (col == false), let theLast = last {
            repeat{
                random = Int(arc4random_uniform(UInt32(range)))
            } while random == theLast
        } else {
            random = Int(arc4random_uniform(UInt32(range)))
        }
        
        if col == false {
            last = random
        }
        
        return random
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        numLabel.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

