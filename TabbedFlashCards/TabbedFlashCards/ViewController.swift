//
//  FlashCardViewController.swift
//  FlashCards
//
//  Created by Miranda Porter on 5/17/20.
//  Copyright © 2020 C323/Summer 2020. All rights reserved.
//

import UIKit

// a subclass of the UIFlashCardViewController class:
class TabbedFlashCardViewController: UIViewController {
    
    // the reference to our AppDelegate:
    var appDelegate: AppDelegate?
    // the reference to our data model:
    var myFlashCardModel: TabbedFlashCardsModel?

    
    // two new properties for the TabbedFlashCardViewController class:
    @IBOutlet var answerLabel: UILabel!
    @IBOutlet var questionLabel: UILabel!
    
    // create one instance of the Model class:
    //  (note the use of "let" to define a constant)
    
    
    
    // two methods to handle button events:
    // @IBAction here tells Xcode to list these methods as
    //      "available actions", and they can therefore be connected
    //      using InterfaceBuilder, to buttons in Main.storyboard:
    @IBAction func showQuestion(_ sender: Any){
        
        // obtain a reference to the AppDelegate:
               self.appDelegate = UIApplication.shared.delegate as? AppDelegate

               // from the AppDelegate, obtain a reference to the Model data:
               self.myFlashCardModel = self.appDelegate?.myFlashCardModel

               let lQuestion : String = self.myFlashCardModel!.getNextQuestion()
        
        self.questionLabel.text = lQuestion
        
        //TO-DO: every time a new question is shown,
        //       the answer label needs to be cleared!
        self.answerLabel.text = ""
    }
   
    @IBAction func showAnswer(_ sender: Any){
        
        // obtain a reference to the AppDelegate:
        self.appDelegate = UIApplication.shared.delegate as? AppDelegate

        // from the AppDelegate, obtain a reference to the Model data:
        self.myFlashCardModel = self.appDelegate?.myFlashCardModel
        
        //TO-DO: implement showAnswer() method, similar to
        //       showQuestions() method
        let lAnswer : String = self.myFlashCardModel!.getAnswer()
        
    self.answerLabel.text = lAnswer
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
    


