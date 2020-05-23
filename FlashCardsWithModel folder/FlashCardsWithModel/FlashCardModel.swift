//
//  FlashCardModel.swift
//  FlashCards
//
//  Created by Miranda Porter on 5/23/20.
//  Copyright © 2020 C323/Summer 2020. All rights reserved.
//

import Foundation

class FlashCardModel  {
    // instance variables, initialized right here:
    var currentQuestionIndex = -1
    var questions = ["How much is 7+7 ?",
                     "In what country is Timbuktu ?",
                     "What rotates when you ride a bike?",
                     // add more questions
                     "Which product can beat mosquitos? ",
                     "How many states are in America?",
                     "Who is Miranda's fav dog?"]
   
    var answers = ["14","Mail","Wheels",
                  // add more answers
                   "Six-god","50","Duomi"]
    
    init () {
        // any useful constructor code could go here
        
    }
    
    func getNextQuestion() -> String {
        self.currentQuestionIndex = self.currentQuestionIndex + 1
        
        // TO-DO: make sure that the app doesn't crash when reaching
        //        past the end of the array's length!
        // HINT: use the .count property of any array object, to
        //       check its length
        
        // if currentQuestionIndex + 1 = 6 ...
        // NOTE: [print(questions.count)in swift online]
        
        
        if self.currentQuestionIndex + 1 == 7 {
            self.currentQuestionIndex = Int(arc4random_uniform(6))
       }
        
        return self.questions[self.currentQuestionIndex]
        
    }
    
    
    func getAnswer() -> String {
        return self.answers[self.currentQuestionIndex]
    }



} // end of class FlashCardModel
