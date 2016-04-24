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
        controller.pickedStorybookTitle = "Goodnight Moon by Margaret Wise Brown"

        controller.pickedStorybook = "In the great green room. There was a telephone. And a red balloon. And a picture of. The cow jumping over the moon. And there were three little bears sitting on chairs. And two little kittens. And a pair of mittens. And a little toy house. And a young mouse. And a comb and a brush and a bowl full of mush. And a quiet old lady who was whispering hush. Goodnight room. Goodnight moon. Goodnight cow jumping over the moon. Goodnight light. And the red balloon. Goodnight bears. Goodnight chairs. Goodnight kittens. And goodnight mittens. Goodnight clocks. And goodnight socks. Goodnight little house. And goodnight mouse. Goodnight comb. And goodnight brush. Goodnight nobody. Goodnight mush. And goodnight to the old lady whispering hush. Goodnight stars. Goodnight air. Good night noises everywhere"
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    

   
    @IBAction func secondStorybookTapped(sender: AnyObject) {
        let controller = self.storyboard?.instantiateViewControllerWithIdentifier("SecondViewController") as! playStorybookVC
        controller.pickedStorybookTitle = "The Moon Goddess"
        controller.pickedStorybook = "Ix Chel, the Lady Rainbow, was the old Moon goddess in Maya mythology. Ix Chel was depicted as an old woman wearing a skirt with crossed bones, and she had a serpent in her hand. She also had a kinder side and was worshiped as the protector of weavers and women in childbirth."
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
  
    @IBAction func thirdStorybookTapped(sender: AnyObject) {
        let controller = self.storyboard?.instantiateViewControllerWithIdentifier("SecondViewController") as! playStorybookVC
        controller.pickedStorybookTitle = "Moon Ride Rhyme"
        controller.pickedStorybook = "Do you want to go up with me to the moon? Point up. Let’s get in our rocket ship and blast off soon! Climb in, seat belt, blast off. Faster and faster we reach to the sky. Jump and reach. Isn’t it fun to be able to fly? Hands out. We’re on the moon, now all take a look (look around. Sit back down, and I’ll read you a book. Sit down"
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func fourthStorybookTapped(sender: AnyObject) {
        let controller = self.storyboard?.instantiateViewControllerWithIdentifier("SecondViewController") as! playStorybookVC
        controller.pickedStorybookTitle = "Big Blue Marble"
        controller.pickedStorybook = "We live on the planet called Earth. It is the third planet from the sun.The Earth goes around the sun. The path it takes is called its orbit. It takes about 365 days for the Earth to go around the sun one time. We call this a year.Earth spins at the same time it orbits. It spins around its axis. This is an imaginary line that passes through the North and South Poles.When you look at Earth from space, it looks like a big, blue marble. The Earth looks blue because of water. Most of Earth is covered with water. Some brown and green can be seen where there is land. A little white shows where there are clouds. We can live on Earth because there is water. Earth has lakes, rivers and oceans. Other planets do not have these.Earth is the only planet in our solar system where we have found life. Plants, animals and people all live on Earth. We can live on Earth because it is not too hot or too cold. Some planets are so hot we would melt. Some planets are so cold we would freeze. But Earth is not too hot or too cold. It is just right. Aren't you glad we live on this big, blue marble?"

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
