//
//  main.swift
//  Tumboon
//
//  Created by Kittinun Vantasin on 6/10/16.
//  Copyright © 2016 Tumboon. All rights reserved.
//

import Foundation
import Swifter

do {
  let server = HttpServer()
  server.GET["/"] = { request in
    return .OK(.Html("Yey!"))
  }
  
  server.GET["/charities"] = { request in
    return .OK(.Json(charities.map { $0.toDictionary() } ))
  }
  
  server.GET["/charities/:id"] = { request in
    let id = request.params[":id"]!
    
    guard let idAsInt = Int(id) else { return .BadRequest(.Json(["error" : "id must be integer"])) }
    
    let filtered = charities.filter { $0.id == idAsInt }
    if filtered.isEmpty {
      return .BadRequest(.Json(["error" : "id must be integer"]))
    }
    
    return .OK(.Json(filtered.first!.toDictionary()))
  }
  
  try server.start(8888)
  
  NSRunLoop.mainRunLoop().run()
} catch {
}
