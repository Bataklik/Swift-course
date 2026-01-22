//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Burak Balci on 22/01/2026.
//  Copyright © 2026 The App Brewery. All rights reserved.
//

struct QuizBrain {
  var quizNumber = 0
  let quiz = [
    Question(question: "A slug's blood is green.", answer: "True"),
    Question(
      question: "Approximately one quarter of human bones are in the feet.",
      answer: "True"
    ),
    Question(
      question:
        "The total surface area of two human lungs is approximately 70 square metres.",
      answer: "True"
    ),
    Question(
      question:
        "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.",
      answer: "True"
    ),
    Question(
      question:
        "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.",
      answer: "False"
    ),
    Question(
      question: "It is illegal to pee in the Ocean in Portugal.",
      answer: "True"
    ),
    Question(
      question: "You can lead a cow down stairs but not up stairs.",
      answer: "False"
    ),
    Question(
      question: "Google was originally called 'Backrub'.",
      answer: "True"
    ),
    Question(
      question: "Buzz Aldrin's mother's maiden name was 'Moon'.",
      answer: "True"
    ),
    Question(
      question:
        "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.",
      answer: "False"
    ),
    Question(
      question:
        "No piece of square dry paper can be folded in half more than 7 times.",
      answer: "False"
    ),
    Question(
      question:
        "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.",
      answer: "True"
    ),
  ]

  // Internal & external parameter naam (_ is zonder parameter naam)
  func checkAnswer(answer userAnwser: String) -> Bool {
    if quiz[quizNumber].answer == userAnwser {
      return true
    }
    return false
  }

  func getQuestion() -> String {
    return quiz[quizNumber].question
  }

  func getProgress() -> Float {
    return Float(quizNumber) / Float(quiz.count)
  }

  // mutating, want je wilt struct parameters aan passen (met .self)
  mutating func nextQuestion() -> Void {
    self.quizNumber = quizNumber < (quiz.count - 1) ? quizNumber + 1 : 0
  }
}
