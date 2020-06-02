//
//  EditCardsViewController.swift
//  TabbedFlashCards
//
//  Created by Miranda Porter on 6/3/20.
//  Copyright © 2020 C323/Summer 2020. All rights reserved.
//

import UIKit

class EditCardsViewController: UIViewController {
    
      // the reference to our AppDelegate:
      var appDelegate: AppDelegate?
      // the reference to our data model:
      var myFlashCardModel: TabbedFlashCardsModel?
    
    @IBOutlet weak var questionTextField: UITextField!
    
    @IBOutlet weak var answerTextField: UITextField!
    
    
    @IBAction func buttonOKAction(sender: AnyObject) {
    //save user input to question&answer array
        
        self.appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        self.myFlashCardModel = self.appDelegate?.myFlashCardModel
        
        // set question to model by calling setQ function
        
        self.myFlashCardModel!.setQuestion(pQuestion:self.questionTextField.text!)
        
        // set answer to model by calling setA function
        
        self.myFlashCardModel!.setAnswer(pAnswer: self.answerTextField.text!)
    
    }

    func retrieveAnswer() {
        
        self.appDelegate = UIApplication.shared.delegate as? AppDelegate
               
        self.myFlashCardModel = self.appDelegate?.myFlashCardModel
       
        //display FlashCards viewController answer in the Text field
        self.answerTextField.text = self.myFlashCardModel!.getAnswer()
    }
    
    func retrieveQuestion() {
        
        self.appDelegate = UIApplication.shared.delegate as? AppDelegate
               
        self.myFlashCardModel = self.appDelegate?.myFlashCardModel
       
        //display FlashCarda viewController question in the text field
        self.questionTextField.text = self.myFlashCardModel!.getCurrentQuestion()
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.retrieveAnswer()
        self.retrieveQuestion()
        
        // Do any additional setup after loading the view, typically from a nib.
      
    }


        // Do any additional setup after loading the view.

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
