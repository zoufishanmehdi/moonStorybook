//
//  storybookVC.swift
//  storybook
//
//  Created by John G on 4/24/16.
//  Copyright © 2016 John G. All rights reserved.
//

import UIKit

class storybookVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func firstStorybookTapped(sender: AnyObject) {
        let controller = self.storyboard?.instantiateViewControllerWithIdentifier("SecondViewController") as! playStorybookVC
        controller.pickedStorybook = "In the great green room. There was a telephone. And a red balloon. And a picture of. The cow jumping over the moon. And there were three little bears sitting on chairs. And two little kittens. And a pair of mittens. And a little toy house. And a young mouse. And a comb and a brush and a bowl full of mush. And a quiet old lady who was whispering hush. Goodnight room. Goodnight moon. Goodnight cow jumping over the moon. Goodnight light. And the red balloon. Goodnight bears. Goodnight chairs. Goodnight kittens. And goodnight mittens. Goodnight clocks. And goodnight socks. Goodnight little house. And goodnight mouse. Goodnight comb. And goodnight brush. Goodnight nobody. Goodnight mush. And goodnight to the old lady whispering hush. Goodnight stars. Goodnight air. Good night noises everywhere"
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    

    @IBAction func secondStorybookTapped(sender: AnyObject) {
        let controller = self.storyboard?.instantiateViewControllerWithIdentifier("SecondViewController") as! playStorybookVC
        controller.pickedStorybook = "Ix Chel, the Lady Rainbow, was the old Moon goddess in Maya mythology. Ix Chel was depicted as an old woman wearing a skirt with crossed bones, and she had a serpent in her hand. She also had a kinder side and was worshiped as the protector of weavers and women in childbirth."
        self.presentViewController(controller, animated: true, completion: nil)
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
