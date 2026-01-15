//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  //MARK: - IBOutlets
  @IBOutlet weak var diceImageViewLeft: UIImageView!

  @IBOutlet weak var diceImageViewRight: UIImageView!

  override func viewDidLoad() {
    super.viewDidLoad()

  }
  //MARK: - Variables
  let diceArr = [
    UIImage(named: "DiceOne"),
    UIImage(named: "DiceTwo"),
    UIImage(named: "DiceThree"),
    UIImage(named: "DiceFour"),
    UIImage(named: "DiceFive"),
    UIImage(named: "DiceSix"),
  ]

  @IBAction func rollButtonPressed(_ sender: UIButton) {
    diceImageViewLeft.image = diceArr.randomElement()!
    diceImageViewRight.image = diceArr.randomElement()!
  }
}
