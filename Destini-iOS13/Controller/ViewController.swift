//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        uiUpdate()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        storyBrain.nextStory(userAnswer)
        
        uiUpdate()
    }
    
    func uiUpdate() {
        let activeStory = storyBrain.getActiveStory()
        
        storyLabel.text = activeStory.title
        choice1Button.setTitle(activeStory.choice1, for: UIControl.State.normal)
        choice2Button.setTitle(activeStory.choice2, for: UIControl.State.normal)
    }
}

