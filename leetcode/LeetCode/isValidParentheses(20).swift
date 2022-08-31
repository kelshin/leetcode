//
//  isValidParentheses.swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-08-18.
//

import Foundation

func isValid(_ s: String) -> Bool {
  let arrString = Array(s)
  var container = [Character]()
  let parenthesis : [ Character : Character ] = [ "}" : "{", ")" : "(", "]" : "["]
  for x in arrString {
    if x == "(" || x == "{" || x == "[" {
      container.append(x)
    } else if !container.isEmpty && parenthesis[x] == container.last {
      container.removeLast()
    } else {
      return false
    }
  }
  print(container)
  return container.isEmpty ? true : false
}
