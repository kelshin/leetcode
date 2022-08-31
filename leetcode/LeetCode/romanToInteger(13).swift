//
//  RomanToInteger.swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-08-03.
//

import Foundation

func romanToInt(_ s: String) -> Int {
  let romanValue : [String: Int] = [
    "I" : 1,
    "V" : 5,
    "X" : 10,
    "L" : 50,
    "C" : 100,
    "D" : 500,
    "M" : 1000
  ]
  var newArr = Array(s).map{ romanValue["\($0)"]! }
  var sum = 0
  var i = 0
  print(newArr)
  while true {
    guard i < newArr.count else { break }
    if i + 1 < newArr.count && newArr[i] < newArr[i + 1] {
     print(newArr[i + 1] - newArr[i])
      sum += newArr[i + 1] - newArr[i]
      newArr.remove(at: i + 1)
    } else {
      sum += newArr[i]
    }
    i += 1
  }
  
//  print(newArr)
  print("total sum \(sum)")
  return sum
}
