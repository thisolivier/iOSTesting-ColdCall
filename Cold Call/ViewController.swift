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
    @IBAction func coldCallButton(_ sender: UIButton) {
        var random:Int!
        if let theLast = last {
            repeat{
                random = Int(arc4random_uniform(UInt32(namesArr.count)))
            } while random == theLast
        } else {
            random = Int(arc4random_uniform(UInt32(namesArr.count)))
        }
        last = random
        nameLabel.text = namesArr[random]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

