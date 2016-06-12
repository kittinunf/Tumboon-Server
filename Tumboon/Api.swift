//
//  Api.swift
//  Tumboon
//
//  Created by Kittinun Vantasin on 6/12/16.
//  Copyright © 2016 Tumboon. All rights reserved.
//

import Foundation
import Swifter
import Alamofire

let omiseSKey = "skey_test_54ab0dh15agv0vnal81"

typealias ApiHandler = Swifter.HttpRequest -> Swifter.HttpResponse

func getCharities() -> ApiHandler {
  return { request in
    return .OK(.Json(collection.getAll().sort { $0.id < $1.id }.map { $0.toDictionary() } ))
  }
}

func getCharitiesById() -> ApiHandler {
  return { request in
    let id = request.params[":id"]!
    guard let idAsInt = Int(id) else { return .BadRequest(.Json(["error" : "id must be integer"])) }
    guard let charity = collection.get(idAsInt) else { return .BadRequest(.Json(["error" : "id must be integer"])) }
    
    return .OK(.Json(charity.toDictionary()))
  }
}

func postCharitiesDonation() -> ApiHandler {
  return { request in
    let id = request.params[":id"]!
    
    let fields = request.parseUrlencodedForm()
    
    let data = fields.reduce([String:String](), combine: { accum, item in
      var _accum = accum
      _accum[item.0] = item.1
      return _accum
    })
    
    let semaphore = dispatch_semaphore_create(0)
    
    var result: Result<AnyObject, NSError>? = nil
    
    //customer, card_token, charge_amount
    let authorization = Request.authorizationHeader(user: omiseSKey, password: "")
    Alamofire.request(.POST, "https://api.omise.co/charges", parameters: data, headers: authorization)
              .validate()
              .responseJSON { response in
                result = response.result
                dispatch_semaphore_signal(semaphore)
              }
    
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER)
    
    guard let _result = result else { return .BadRequest(.Json(["error" : "something is wrong, please try again later"])) }
    
    switch _result {
    case .Success(let data):
        //update our collection here
        let amount = data["amount"] as? Double
        if let amount = amount {
          let charity = collection.get(Int(id)!)!
          var _charity = charity
          _charity.donationAmount += (amount / 100)
          _charity.donatorCount += 1
          collection.update(_charity.id, value: _charity)
        }
        
        return .OK(.Json(data))
    case .Failure(let error):
        return .BadRequest(.Json(["error" : error]))
    }
  }
}
