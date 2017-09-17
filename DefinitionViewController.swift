//
//  DefinitionViewController.swift
//  Swift App
//
//  Created by Ben Elzarka on 17/9/17.
//  Copyright © 2017 Ben Elzarka. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefinition: UILabel!
    var emoji = "NO EMOJI"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        emojiLabel.text = emoji
        
        if emoji == "😀"{
        emojiDefinition.text = "Happy Days"
        }
        if emoji == "💩"{
            emojiDefinition.text = "This Is Shit"
        }
        if emoji == "😎"{
            emojiDefinition.text = "Think You're Cool?"
        }
        if emoji == "🤡"{
            emojiDefinition.text = "AAh FUCK a Clown"
        }
        if emoji == "😑"{
            emojiDefinition.text = "Fight me you lil bitch"
        }
        if emoji == "🤠"{
            emojiDefinition.text = "No one likes country music"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
