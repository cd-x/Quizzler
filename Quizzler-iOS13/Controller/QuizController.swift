//
//  QuizController.swift
//  Quizzler-iOS13
//
//  Created by Rajrishi Vishwakarma on 23/07/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class QuizController : UIViewController{
    
    var quizBrain = QuizBrain()
    
    @IBOutlet weak var quizText: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func optionSelected(_ sender: UIButton) {
        let option:String = (sender.titleLabel?.text)!
        let answer: Bool = quizBrain.checkAnswer(option)
        print(answer)
        quizBrain.nextQuestion()
        updateUI()
    }
    
    func updateUI() {
        scoreLabel.text = "Score: \(quizBrain.score)"
        quizText.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
    }
}
