//
//  Model.swift
//  Tumboon
//
//  Created by Kittinun Vantasin on 6/11/16.
//  Copyright © 2016 Tumboon. All rights reserved.
//

import Foundation

struct Charity {
  let id: Int
  let name: String
  let desc: String
  let logoUrl: String
  let coverUrl: String
  var donatorCount: Int
  var donationAmount: Double
  
  func toDictionary() -> [String : AnyObject] {
    return [
      "id": id,
      "name": name,
      "desc": desc,
      "logo_url": logoUrl,
      "cover_url": coverUrl,
      "donator_count": donatorCount,
      "donation_amount": donationAmount
    ]
  }
}
