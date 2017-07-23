//
//  ViewController.swift
//  SoundBoard
//
//  Created by Aaron on 31/07/2015.
//  Copyright © 2015 Aaron. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var Soundplayer1:AVAudioPlayer = AVAudioPlayer()
    var Soundplayer2:AVAudioPlayer = AVAudioPlayer()
    var Soundplayer3:AVAudioPlayer = AVAudioPlayer()
    var Soundplayer4:AVAudioPlayer = AVAudioPlayer()
    var Soundplayer5:AVAudioPlayer = AVAudioPlayer()
    var Soundplayer6:AVAudioPlayer = AVAudioPlayer()
    var Soundplayer7:AVAudioPlayer = AVAudioPlayer()
    var Soundplayer8:AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let FileLocation1 = NSBundle.mainBundle().pathForResource("drum1", ofType: "wav")
        let FileLocation2 = NSBundle.mainBundle().pathForResource("drum2", ofType: "wav")
        let FileLocation3 = NSBundle.mainBundle().pathForResource("drum3", ofType: "wav")
        let FileLocation4 = NSBundle.mainBundle().pathForResource("drum4", ofType: "wav")
        let FileLocation5 = NSBundle.mainBundle().pathForResource("drum5", ofType: "wav")
        let FileLocation6 = NSBundle.mainBundle().pathForResource("symbol1", ofType: "wav")
        let FileLocation7 = NSBundle.mainBundle().pathForResource("symbol2", ofType: "wav")
        let FileLocation8 = NSBundle.mainBundle().pathForResource("symbol3", ofType: "wav")
        
        
        do {
            
            Soundplayer1 = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: FileLocation1!))
            Soundplayer2 = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: FileLocation2!))
            Soundplayer3 = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: FileLocation3!))
            Soundplayer4 = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: FileLocation4!))
            Soundplayer5 = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: FileLocation5!))
            Soundplayer6 = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: FileLocation6!))
            Soundplayer7 = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: FileLocation7!))
            Soundplayer8 = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: FileLocation8!))
            
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
            
        }
        
        catch {
            
            print(error)
            
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Drum1(sender: AnyObject) {
        
        Soundplayer1.play()
        
    }
    
    @IBAction func Drum2(sender: AnyObject) {
        
        Soundplayer2.play()
    }
    
    @IBAction func Drum3(sender: AnyObject) {
        
        Soundplayer3.play()
    }
    
    @IBAction func Drum4(sender: AnyObject) {
        
        Soundplayer4.play()
    }
    
    @IBAction func Drum5(sender: AnyObject) {
        
        Soundplayer5.play()
    }
    
    @IBAction func Cymbol1(sender: AnyObject) {
        
        Soundplayer6.play()
    }
    
    @IBAction func Cymbol2(sender: AnyObject) {
        
        Soundplayer7.play()
    }

    @IBAction func Cymbol3(sender: AnyObject) {
        
        Soundplayer8.play()
    }

}
















