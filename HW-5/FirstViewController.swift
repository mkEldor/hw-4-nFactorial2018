//
//  FirstViewController.swift
//  HW-5
//
//  Created by Eldor Makkambayev on 29.06.2018.
//  Copyright © 2018 Eldor Makkambayev. All rights reserved.
//

import UIKit


class FirstViewController: UIViewController {
  
  
  @IBOutlet weak var thirdBtn: UIButton!
  @IBOutlet weak var secondBtn: UIButton!
  @IBOutlet weak var firstBtn: UIButton!
  @IBOutlet weak var recordMyName: UILabel!
  @IBOutlet weak var recordScore: UILabel!
  
  var level: Int = 0
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if (segue.identifier == "toSecond") {
      (segue.destination as! MathExercisesViewController).level = level
      (segue.destination as! MathExercisesViewController).vc = self
    }
  }
  
  func addRecord(newRecord: String, score: Int){
    recordMyName.text = newRecord
    recordScore.text = "Your score: \(score)"
  }
  
  @IBAction func playBynAction(_ sender: Any) {
    if level != 0{
      performSegue(withIdentifier: "toSecond", sender: self)
    }else{
      
    }
  }
  
  @IBAction func firstLevel(_ sender: UIButton) {
    sender.backgroundColor = UIColor.red
    thirdBtn.backgroundColor = UIColor(red: 111/255, green: 112/255, blue: 122/255, alpha: 1)
    secondBtn.backgroundColor = UIColor(red: 111/255, green: 112/255, blue: 122/255, alpha: 1)
    level = 1
  }
  
  @IBAction func secondLevel(_ sender: UIButton) {
    sender.backgroundColor = UIColor.green
    thirdBtn.backgroundColor = UIColor(red: 111/255, green: 112/255, blue: 122/255, alpha: 1)
    firstBtn.backgroundColor = UIColor(red: 111/255, green: 112/255, blue: 122/255, alpha: 1)
    level = 2
  }
  
  @IBAction func thirdLevel(_ sender: UIButton) {
    sender.backgroundColor = UIColor.cyan
    firstBtn.backgroundColor = UIColor(red: 111/255, green: 112/255, blue: 122/255, alpha: 1)
    secondBtn.backgroundColor = UIColor(red: 111/255, green: 112/255, blue: 122/255, alpha: 1)
    level = 3
  }
}

