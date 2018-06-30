//
//  SecondViewController.swift
//  HW-5
//
//  Created by Eldor Makkambayev on 29.06.2018.
//  Copyright © 2018 Eldor Makkambayev. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
  @IBOutlet weak var colorView: UIView!
  @IBOutlet weak var colorName: UILabel!
  @IBOutlet weak var falseBtn: UIButton!
  @IBOutlet weak var trueBtn: UIButton!
  @IBOutlet weak var scoreLabel: UILabel!
  
  
  var refreshScoreLabel: Int = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    colorView.layer.borderColor = UIColor.black.cgColor
    colorView.layer.borderWidth = 1
    colorView.clipsToBounds = true
    
    
    falseBtn.layer.borderWidth = 1
    falseBtn.layer.borderColor = UIColor.black.cgColor
    falseBtn.clipsToBounds = true
    
    trueBtn.layer.borderWidth = 1
    trueBtn.layer.borderColor = UIColor.black.cgColor
    trueBtn.clipsToBounds = true
    
    colorCheck()
    
    
  }
  
  @IBAction func trueAction(_ sender: Any) {
    
    if colorName.text ==  Colors.init().colors[colorView.backgroundColor!]{
      refreshScoreLabel += 1
      scoreLabel.text = String(refreshScoreLabel)
      print("0")
    }else{
      refreshScoreLabel -= 1
      scoreLabel.text = String(refreshScoreLabel)
      print("1")
    }
    colorCheck()
  }
  
  @IBAction func falseAction(_ sender: Any) {
    
    if colorName.text !=  Colors.init().colors[colorView.backgroundColor!]{
      refreshScoreLabel += 1
      scoreLabel.text = String(refreshScoreLabel)
      print("2")
      print("\(colorView.backgroundColor!)")
    }else{
      refreshScoreLabel -= 1
      scoreLabel.text = String(refreshScoreLabel)
      print("3")
    }
    colorCheck()
  }
  
  
  func colorCheck(){
    colorView.backgroundColor = Colors.init().colorArray?.randomItem()
    colorName.text = Colors.init().colorNameArray?.randomItem()
    colorName.textColor = Colors.init().colorArray?.randomItem()
    if colorName.textColor == colorView.backgroundColor{
      colorName.textColor = Colors.init().colorArray?.randomItem()
    }
//    colorName.textColor = UIColor.white
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    scoreLabel.text = String(refreshScoreLabel)
  }
  
  

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

