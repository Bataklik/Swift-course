//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import AVFoundation
import UIKit

class ViewController: UIViewController {

  var player: AVAudioPlayer?

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func keyPressed(_ sender: UIButton) {
    let key = sender.titleLabel?.text ?? "C"
    playSound(keyLabel: key)
  }

  func playSound(keyLabel:String) {
    let url = Bundle.main.url(forResource: keyLabel, withExtension: "wav")
    player = try! AVAudioPlayer(contentsOf: url!)
    player?.play()
  }
}
