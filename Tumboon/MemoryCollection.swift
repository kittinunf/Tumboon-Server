//
//  MemoryCollection.swift
//  Tumboon
//
//  Created by Kittinun Vantasin on 6/12/16.
//  Copyright © 2016 Tumboon. All rights reserved.
//

import Foundation

class MemoryCollection<T> {

  var id = 0
  
  var items = [Int : T]()
  
  func nextId() -> Int {
    id += 1
    return id
  }
  
  func getAll() -> [T] {
    return Array(items.values)
  }
  
  func get(id: Int) -> T? {
    return items[id]
  }
  
  func update(value: T) {
    items[nextId()] = value
  }
  
  func update(id: Int, value: T) {
    items[id] = value
  }
  
  func addAll(values: [T]) {
    values.forEach {
      update($0)
    }
  }
  
}
