//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var progressBar: UIProgressView!
  @IBOutlet weak var questionLabel: UILabel!

  @IBOutlet weak var trueButton: UIButton!

  @IBOutlet weak var falseButton: UIButton!

  var quizBrain = QuizBrain()

  override func viewDidLoad() {
    super.viewDidLoad()
    updateUI()
  }

  @IBAction func anwserButtonPressed(_ sender: UIButton) {
    let selectedAnwser = sender.currentTitle!

    let isCorrect = quizBrain.checkAnswer(answer: selectedAnwser)

    sender.backgroundColor = isCorrect ? UIColor.green : UIColor.red

    // Na 1 second wachten, wordt updateUI uitgevoerd en de buttons worden gecleared
    Timer.scheduledTimer(
      timeInterval: 0.2,
      target: self,
      selector: #selector(updateUI),
      userInfo: nil,
      repeats: false
    )
  }

  @objc func updateUI() {
    quizBrain.nextQuestion()
    questionLabel.text = quizBrain.getQuestion()
    progressBar.progress = quizBrain.getProgress()
    
    trueButton.backgroundColor = UIColor.clear
    falseButton.backgroundColor = UIColor.clear

  }

}
