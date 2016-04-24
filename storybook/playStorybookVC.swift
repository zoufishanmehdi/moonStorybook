//
//  playStorybookVC.swift
//  storybook
//
//  Created by John G on 4/24/16.
//  Copyright © 2016 John G. All rights reserved.
//

import UIKit
import WatsonDeveloperCloud
import AVFoundation

class playStorybookVC: UIViewController {
    var player: AVAudioPlayer?
    var pickedStorybook = String()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func playStorybookTapped(sender: AnyObject) {
        
        
        let service = TextToSpeech(username: "0a750766-2074-424b-8238-bf347d5d7a81", password: "XckmUdVX2pzH")
        
        
        
        //synthesize the audio
        service.synthesize(pickedStorybook) { (data, error) in
            
            if let audio = data {
                
                do {
                    //play the audio
                    self.player = try AVAudioPlayer(data: audio)
                    print(data)
                    self.player!.prepareToPlay()
                    // audioPlayer.delegate = self
                    self.player!.play()
                } catch {
                    print("Couldn't create player")
                }
            } else {
                print(error)
            }
        }
    
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
