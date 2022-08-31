//
//  firstUniqChar.swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-08-17.
//

import Foundation

func firstUniqChar(_ s: String) -> Int {
  var dictOfString : [String : Int] = [:]
  var arrOfBool = [Bool](repeating: false, count: 26)
  var arrOfCharsInString : [String] = []
//  for i in 0...s.count - 1 {
//    let ch = s[i]
//    let asciiToInt = Int(Character(ch).asciiValue!) - 97
//    if (dictOfString[ch] == nil) {
//      dictOfString[ch] = i
//      arrOfCharsInString.append(ch)
//    } else {
//      arrOfBool[asciiToInt] = true
//    }
//  }
  
  for (i, ch) in s.enumerated() {
    let asciiToInt = Int(ch.asciiValue!) - 97
    if (dictOfString[String(ch)] == nil) {
      dictOfString[String(ch)] = i
      arrOfCharsInString.append(String(ch))
    } else {
      arrOfBool[asciiToInt] = true
    }
  }

  for ch in arrOfCharsInString {
    let asciiToInt = Int(Character(ch).asciiValue!) - 97
    if arrOfBool[asciiToInt] == false {
      return Int(dictOfString[ch]!)
    }
  }
  return -1
}

//func firstUniqChar(_ s: String) -> Int {
//  var arrOfCharCount = [Int](repeating: 0, count: 26)
//  for i in 0...s.count - 1 {
//    let ch = s[i]
//    let asciiToInt = Int(Character(ch).asciiValue!) - 97
//    arrOfCharCount[asciiToInt] += 1
//  }
//
//  for i in 0...s.count - 1 {
//    let ch = s[i]
//    let asciiToInt = Int(Character(ch).asciiValue!) - 97
//    if arrOfCharCount[asciiToInt] == 1 {
//      return i
//    }
//  }
//
//  return -1
//}
