//
//  ViewController.swift
//  Swift App
//
//  Created by Ben Elzarka on 17/9/17.
//  Copyright © 2017 Ben Elzarka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var theLabel: UILabel!

 
    @IBAction func Login(_ sender: Any) {
        theLabel.text = "Raffler"
    }
    
    @IBAction func Home(_ sender: Any) {
        theLabel.text = "Rafflr"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.darkGray
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

