//
//  Colors.swift
//  HW-5
//
//  Created by Eldor Makkambayev on 29.06.2018.
//  Copyright © 2018 Eldor Makkambayev. All rights reserved.
//

import Foundation

import UIKit
struct Colors {
  
  static let red              = UIColor(red: 255.0/255.0, green: 115.0/255.0, blue: 115.0/255.0, alpha: 1.0)
  static let orange           = UIColor(red: 255.0/255.0, green: 175.0/255.0, blue: 72.0/255.0, alpha: 1.0)
  static let green            = UIColor(red: 91.0/255.0, green: 197.0/255.0, blue: 159.0/255.0, alpha: 1.0)
  static let grey             = UIColor(red: 128.0/255.0, green: 128.0/255.0, blue: 128.0/255.0, alpha: 1.0)
  static let brown            = UIColor(red: 165.0/255.0, green: 42.0/255.0, blue: 42.0/255.0, alpha: 1.0)
  
  static let black            = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
  static let white            = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
  static let someColor            = UIColor(red: 55.0/255.0, green: 25.0/255.0, blue: 72.0/255.0, alpha: 1.0)
  static let someColor2            = UIColor(red: 25.0/255.0, green: 72.0/255.0, blue: 95.0/255.0, alpha: 1.0)
  
  
  var colors = [Colors.red : "RED",
                Colors.green : "GREEN",
                Colors.black : "BLACK",
                Colors.white : "WHITE",
                Colors.orange : "ORANGE",
                Colors.grey : "GREY",
                Colors.brown : "BROWN"
                ]
  
  
  
  var colorArray: Array<UIColor>?
  var colorNameArray: Array<String>?

  init(){
    self.colorArray = Array(colors.keys)
    self.colorNameArray = Array(colors.values)
  }
}


