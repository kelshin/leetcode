//
//  plusOne.swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-08-21.
//

import Foundation

func plusOne(_ digits: [Int]) -> [Int] {
  guard digits.count >= 1 else { return digits }
  var newDigits = digits
  var length = newDigits.count - 1
  
  while true {
    if newDigits[length] == 9 {
      newDigits[length] = 0
      length -= 1
      if length < 0 {
        newDigits.insert(1, at: 0)
        break
      }
    } else {
      newDigits[length] += 1
      break
    }
  }
  return newDigits
    }
