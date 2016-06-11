//
//  Util.swift
//  Tumboon
//
//  Created by Kittinun Vantasin on 6/11/16.
//  Copyright © 2016 Tumboon. All rights reserved.
//

import Foundation

extension Double {
  func roundTo(places: Int) -> Double {
    let num = pow(10.0, Double(places))
    return round(self * num) / num
  }
}
