//
//  ViewController.swift
//  FlashCards
//
//  Created by Miranda Porter on 5/17/20.
//  Copyright © 2020 C323/Summer 2020. All rights reserved.
//

import UIKit

// a subclass of the UIViewController class:
class ViewController: UIViewController {
    
    // two new properties for the ViewController class:
    @IBOutlet var answerLabel: UILabel!
    @IBOutlet var questionLabel: UILabel! 

    // two methods to handle button events:
    // @IBAction here tells Xcode to list these methods as
    //      "available actions", and they can therefore be connected
    //      using InterfaceBuilder, to buttons in Main.storyboard:
    @IBAction func showQuestion(_ sender: Any){
        self.questionLabel.text = "Who is my fav dog?"
        self.answerLabel.text = "(...try guessing...)"
    }
    @IBAction func showAnswer(_ sender: Any){
        
        if self.questionLabel.text == ("") {}

        else {
            self.answerLabel.text = "DuoMi!"
            }
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}


