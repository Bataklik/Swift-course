//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  let eggTimer = [
    "Soft": (1 * 60),
    "Medium": (8 * 60),
    "Hard": (12 * 60),
  ]

  @IBOutlet weak var countLabel: UILabel!
  @IBOutlet weak var timeBar: UIProgressView!

  var eggSeconds = 1
  var timer = Timer()

  @IBAction func eggPressed(_ sender: UIButton) {
    let eggHardness = sender.currentTitle! as String

    eggSeconds = Int(eggTimer[eggHardness]!)
    timeBar.setProgress((Float(eggSeconds) / 60), animated: true)

    timer = Timer.scheduledTimer(timeInterval: 1.0,
                         target: self,
                         selector: #selector(updateTimer),
                         userInfo: nil,
                         repeats: true)

    }
  @objc func updateTimer(){
    if eggSeconds > 0{
      countLabel.text = String(eggSeconds) + " Seconds"
      timeBar.setProgress((Float(eggSeconds) / 60), animated: true)
      eggSeconds -= 1
    }else{
      timer.invalidate()
      countLabel.text = "Done"
      timeBar.setProgress(0.0, animated: true)
    }
  }

}
