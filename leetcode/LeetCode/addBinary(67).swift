//
//  addBinary.swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-08-21.
//

import Foundation

func addBinary(_ a: String, _ b: String) -> String {
  var longest = a.count >= b.count ? a : b
  var shortest = b.count <= a.count ? b : a
  var result = ""
  var carry = 0
  print(longest)
  print(shortest)
  while longest.count > 0 {
    let a = Int(longest.removeLast().description)!
    let b = !shortest.isEmpty ? Int(shortest.removeLast().description)! : 0
    let total = a + b + carry
    result = String(total % 2) + result
    carry = total / 2
  }
  return carry == 1 ? String(carry) + result : result
    }

func BinarayCalc(_ a: Int, _ b: Int) {
  
}
