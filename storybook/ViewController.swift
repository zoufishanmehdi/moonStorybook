//
//  ViewController.swift
//  storybook
//
//  Created by John G on 4/23/16.
//  Copyright © 2016 John G. All rights reserved.
//
//
//import UIKit
//import WatsonDeveloperCloud
//import AVFoundation
//
//class ViewController: UIViewController {
//    var player: AVAudioPlayer?
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//    
////    
////    let service = TextToSpeech(username: "yourname", password: "yourpass")
////    
////    //synthesize the audio
////    service.synthesize("Hello World", oncompletion: {
////    data, error in
////    if let data = data {
////    
////    //play the audio
////    let audioPlayer = try AVAudioPlayer(data: data)
////    audioPlayer.prepareToPlay()
////    audioPlayer.play()
////    }
////    )
//    
//    @IBAction func readStory(sender: AnyObject) {
//        
//      //  BasicAuthenticationStrategy("zzmehdi@gmail.com")
//        
//     
//        
//      let service = TextToSpeech(username: "0a750766-2074-424b-8238-bf347d5d7a81", password: "XckmUdVX2pzH")
//        
//    
//        
//        //synthesize the audio
//        service.synthesize("Hello World") { (data, error) in
//            
//                if let audio = data {
//                    
//                     do {
//                    //play the audio
//                        self.player = try AVAudioPlayer(data: audio)
//                        print(data)
//                        self.player!.prepareToPlay()
//                       // audioPlayer.delegate = self
//                        self.player!.play()
//                     } catch {
//                        print("Couldn't create player")
//                    }
//                } else {
//                    print(error)
//                }
//            }
//        }
//  
//    }


