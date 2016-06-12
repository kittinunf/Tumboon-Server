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
  
  server.GET["api/charities"] = getCharities()
  server.GET["api/charities/:id"] = getCharitiesById()
  
  try server.start(8888)
  
  NSRunLoop.mainRunLoop().run()
} catch {
  print("Server has error")
}
