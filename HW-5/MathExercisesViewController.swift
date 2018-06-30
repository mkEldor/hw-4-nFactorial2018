//
//  MathExercisesViewController.swift
//  HW-5
//
//  Created by Eldor Makkambayev on 29.06.2018.
//  Copyright © 2018 Eldor Makkambayev. All rights reserved.
//

import UIKit


class MathExercisesViewController: UIViewController {
  
  @IBOutlet weak var popView: UIView!
  @IBOutlet weak var bluredView: UIVisualEffectView!
  @IBOutlet weak var answerTF: UITextField!
  @IBOutlet weak var nameTF: UITextField!
  @IBOutlet weak var exerciseLabel: UILabel!
  @IBOutlet weak var scoreLabel: UILabel!
  @IBOutlet weak var myScoreLabel: UILabel!
  @IBOutlet weak var bottomView: UIView!
  @IBOutlet weak var timeLabel: UILabel!
  
  var vc: FirstViewController!
  
  var x = 0
  var y = 0
  var refreshScore = 0
  var timeInt = 15
  var level: Int = 0
  var count = 0
  var speed = 5
  
  override func viewDidLoad() {
    super.viewDidLoad()
    newQuestion()
    moveQuestionLabel()
    timer()
    Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(moveQuestionLabel), userInfo: nil, repeats: true)
    Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timer), userInfo: nil, repeats: true)
  }
  
  @IBAction func submitAction(_ sender: Any) {
    if answerTF.text == String(x * y) {
      refreshScore += 1
      scoreLabel.text = String(refreshScore)
      speed += 3
    }else{
      refreshScore -= 1
      count += 1
      scoreLabel.text = String(refreshScore)
      speed = 5
      if count == 2{
        alert()
      }
      
    }
    answerTF.text = ""
    newQuestion()
    timer()
  }
  
  
  @IBAction func okAction(_ sender: Any) {
    
    let newRecordName = nameTF.text
    
    if nameTF.text != ""{
      self.vc.addRecord(newRecord: newRecordName!, score: self.refreshScore)
      navigationController?.popViewController(animated: true)
      bluredView.alpha = 0
      
    }
  
  }
  
  func alert(){
    UIView.animate(withDuration: 0.3) {
      self.bluredView.alpha = 1
      self.popView.transform = CGAffineTransform.identity
      self.myScoreLabel.text = "Your score: \(self.scoreLabel.text!)"
    }
  }
  
  
  func newQuestion() {
    switch level {
    case 1:
      x = Int(arc4random_uniform(9) + 1)
      y = Int(arc4random_uniform(9) + 1)
      break
    case 2:
      x = Int(arc4random_uniform(89) + 10)
      y = Int(arc4random_uniform(89) + 10)
      break
    case 3:
      x = Int(arc4random_uniform(899) + 100)
      y = Int(arc4random_uniform(899) + 100)
    default:
      break
    }
    exerciseLabel.text = "\(x) x \(y) ="
    exerciseLabel.center.y = 50
  }
  
  
  @objc func moveQuestionLabel() {
    if(exerciseLabel.center.y >= bottomView.center.y) {
      newQuestion()
      timer()
      refreshScore -= 1
      count += 1
      if count == 2 {
        alert()
      }
      scoreLabel.text = String(refreshScore)
    }
    spped(speed: speed)
  }
  
  func spped(speed: Int){
    UIView.animate(withDuration: 0.2) {
      self.exerciseLabel.center.y += CGFloat(speed)
    }
  }
  
  
  @objc func timer(){
    timeLabel.text = String(timeInt)
    if timeLabel.text == "0"{
      bluredView.alpha = 1
      print("vseee")
    }
    timeInt -= 1
  }
}
