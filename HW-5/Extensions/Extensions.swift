//
//  Extensions.swift
//  HW-5
//
//  Created by Eldor Makkambayev on 29.06.2018.
//  Copyright © 2018 Eldor Makkambayev. All rights reserved.
//

import Foundation
extension Array {
  func randomItem() -> Element? {
    if isEmpty { return nil }
    let index = Int(arc4random_uniform(UInt32(self.count)))
    return self[index]
  }
}
