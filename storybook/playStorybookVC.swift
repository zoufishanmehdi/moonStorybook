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
    var pickedStorybookTitle = String()
    var pickedStorybook = String()
    var parentPhonenumber = "9174034445"
    
    var timeAudioPlayed = player.currentTime / player.duration
    var progress = float(timeAudioPlayed)
    
    var textToPops = [String]
    
    

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


    @IBAction func stopStorybookTapped(sender: AnyObject) {
        self.player!.stop()
        sendPopsSMS()
    }
    
    func sendPopsSMS () {
        textToPops.append(pickedStorybookTitle)
        textToPops.append(progress)
        let code = arc4random_uniform(8999) + 1000
        var swiftRequest = SwiftRequest()
        
        var data = [
            "To" : parentPhonenumber as String,
            "From" : "+18622256795",
            "Body" : textToPops as String
        ]
        swiftRequest.post("https://api.twilio.com/2010-04-01/Accounts/ACae8bf0bfc39454dd5f1621df862edb9c/Messages",
            auth: ["username" : "ACae8bf0bfc39454dd5f1621df862edb9c", "password" : "5931adb0f5d66f7dd2bb08af2642442a"],
            data: data,
            callback: {err, response, body in
                if err == nil {
                    print("Success: \(response)")
                } else {
                    print("Error: (err)")
                }
        })
        
        
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
