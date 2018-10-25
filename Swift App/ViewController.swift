//
//  ViewController.swift
//  Swift App
//
//  Created by Ben Elzarka on 17/9/17.
//  Copyright © 2017 Ben Elzarka. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.darkGray
        
        emojiTableView.dataSource = self
        emojiTableView.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "Happy Days"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "💩"
        emoji2.birthYear = 2010
        emoji2.category = "Shit"
        emoji2.definition = "This Is Shit"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😎"
        emoji3.birthYear = 2010
        emoji3.category = "Cunt"
        emoji3.definition = "You think you're cool?"
        
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🤡"
        emoji4.birthYear = 2010
        emoji4.category = "Clown"
        emoji4.definition = "Aah FUCK a Clown"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "😑"
        emoji5.birthYear = 1996
        emoji5.category = "Lil Bitch"
        emoji5.definition = "Fight me you lil bitch"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🤠"
        emoji6.birthYear = 2010
        emoji6.category = "Fuck Off"
        emoji6.definition = "No one likes country music"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🍆"
        emoji7.birthYear = 1
        emoji7.category = "Eggplant"
        emoji7.definition = "ITS A HUGE EGGPLANT"
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "🙃"
        emoji8.birthYear = 2015
        emoji8.category = "HA HA"
        emoji8.definition = "ITS A UPSIDE DOWN FACE!"
        
        let emoji9 = Emoji()
        emoji9.stringEmoji = "😂"
        emoji9.birthYear = 2010
        emoji9.category = "JOY"
        emoji9.definition = "PURE F**KING JOY"


        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8, emoji9]
    }
}

