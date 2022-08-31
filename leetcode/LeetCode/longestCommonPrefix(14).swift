//
//  longestCommonPrefix.swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-08-03.
//

import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
//  guard !strs.isEmpty else {
//    return ""
//  }
//  guard strs.count != 1 else {
//    return strs[0]
//  }
//  var strings = strs
//  let reference = strings.removeFirst()
//  var prefix = ""
//  var i = 0
//  while true {
//    for word in strings {
//      guard i < reference.count && i < word.count else { return prefix }
//      if reference[i] != word[i] {
//        return prefix
//      }
//    }
//    prefix = prefix + reference[i]
//    i += 1
//  }
  
  
  let sortedStrs = strs.sorted(by: {$0.count < $1.count})
  var prefix = ""
  var i = 0
  var prefixIsEqual = true
  while true {
    guard i < sortedStrs[0].count else { break }
    let ch = sortedStrs[0][i]
    for x in 1..<sortedStrs.count{
      prefixIsEqual = ch == sortedStrs[x][i] ? true : false
      guard prefixIsEqual else { return prefix }
    }
    prefix = prefixIsEqual ? prefix + String(ch) : prefix + ""
    i += 1
  }
  
  
//  for (i, ch) in sortedStrs[0].enumerated() {
//    var prefixIsEqual = true
//    for x in 1..<sortedStrs.count{
//      prefixIsEqual = ch == Character(sortedStrs[x][i]) ? true : false
//      guard prefixIsEqual else { break }
//    }
//    guard prefixIsEqual else { break }
//    prefix = prefixIsEqual ? prefix + String(ch) : prefix + ""
//  }
//  print(prefix)
  return prefix
}
