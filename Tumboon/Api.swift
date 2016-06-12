//
//  Api.swift
//  Tumboon
//
//  Created by Kittinun Vantasin on 6/12/16.
//  Copyright © 2016 Tumboon. All rights reserved.
//

import Foundation
import Swifter

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
