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
    return .OK(.Json(charities.map { $0.toDictionary() } ))
  }
}

func getCharitiesById() -> ApiHandler {
  return { request in
    let id = request.params[":id"]!
    
    guard let idAsInt = Int(id) else { return .BadRequest(.Json(["error" : "id must be integer"])) }
    
    let filtered = charities.filter { $0.id == idAsInt }
    if filtered.isEmpty {
      return .BadRequest(.Json(["error" : "id must be integer"]))
    }
    
    return .OK(.Json(filtered.first!.toDictionary()))
  }
}

func postCharitiesDonation() -> ApiHandler {
  return { request in
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
      
        return .OK(.Json(data))
    case .Failure(let error):
        return .BadRequest(.Json(["error" : error]))
    }
  }
}
