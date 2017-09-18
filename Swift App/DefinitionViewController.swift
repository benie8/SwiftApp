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
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    var emoji = Emoji()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        emojiLabel.text = emoji.stringEmoji
        birthYearLabel.text = "BirthYear: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        emojiDefinition.text = emoji.definition
        
        /*
        if emoji == "😀"{
        emojiDefinition.text = "Happy Days"
            categoryLabel.text = "Category: Prick"
            birthYearLabel.text = "BirthYear: 2011"
        }
        if emoji == "💩"{
            emojiDefinition.text = "This Is Shit"
            categoryLabel.text = "Category: Shit"
            birthYearLabel.text = "BirthYear: 2009"
        }
        if emoji == "😎"{
            emojiDefinition.text = "Think You're Cool?"
            categoryLabel.text = "Category: Cunt"
            birthYearLabel.text = "BirthYear: 2000"
        }
        if emoji == "🤡"{
            emojiDefinition.text = "Aah FUCK a Clown"
            categoryLabel.text = "Category: Clown"
            birthYearLabel.text = "BirthYear: 2016"
        }
        if emoji == "😑"{
            emojiDefinition.text = "Fight me you lil bitch"
            categoryLabel.text = "Category: Lil Bitch"
            birthYearLabel.text = "BirthYear: 1996"
        }
        if emoji == "🤠"{
            emojiDefinition.text = "Fuck Off. No one likes country music"
            categoryLabel.text = "Category: Who Cares"
            birthYearLabel.text = "BirthYear: Give a shit"
        }*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
