//
//  ViewController.swift
//  Swift App
//
//  Created by Ben Elzarka on 17/9/17.
//  Copyright © 2017 Ben Elzarka. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    var audioplayer : AVAudioPlayer!
    @IBOutlet weak var theLabel: UILabel!
    
    var counter = 0

    @IBAction func Login(_ sender: Any) {
        theLabel.text = "Raffler"
        counter = counter + 1
        
        if counter >= 10{
            theLabel.text = "Quit Tapping"
        }
    }
    
    @IBAction func Home(_ sender: Any) {
        theLabel.text = "Rafflr"
        print("Going Home")
        /*
        let audiourl = NSURL.fileURL(withPath: Bundle.main.path(forResource: "audio", ofType: "m4a")!)
        do{
            try AVAudioSession.sharedInstance().setActive(true)
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try audioplayer = AVAudioPlayer(contentsOf: audiourl)
                audioplayer.prepareToPlay()
                audioplayer.play()
        }catch let error as NSError{
            
        }
        */
        
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

