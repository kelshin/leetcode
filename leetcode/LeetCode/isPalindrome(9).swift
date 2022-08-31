//
//  isPalindrome.swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-08-01.
//

import Foundation

//func isPalindrome(_ x: Int) -> Bool {
//
//  var arr = x.digits
//  print(arr)
//  guard x >= 0 else { return false }
//  guard x > 9 else { return true }
//  let digitCount = Int((floor(log10(Double(x))) + 1))
//  let first = x/Int(truncating: pow(10, digitCount - 1) as NSNumber)
//  let last = x%10
//  if digitCount == 2 && first == last {
//    return true
//  } else if digitCount > 2 {
//    let mid = (x/10)%Int(truncating: pow(10, digitCount - 2) as NSNumber)
//    if first == last{
//      guard mid != 0 else { return true }
//      print("first digit \(first) middle digit \(mid) last digit \(last) digit counts \(digitCount)")
//      let midDigitCount = Int((floor(log10(Double(mid))) + 1))
//      guard digitCount - 2 == midDigitCount else { return false }
//      return isPalindrome(mid)
//    }
//  }
//  return false
//}

func isPalindrome(_ x: Int) -> Bool {
  guard x >= 0 else { return false }
  var arr = x.digits
  while true {
    guard arr.count > 1 else { return true }
    if (arr.removeFirst() != arr.removeLast()) {
      return false
    }
  }
}

extension Int {
  var digits : [Int] {
    return String(describing: self).compactMap{Int(String($0))}
  }
}
//  let sq = Int(truncating: pow(10, digitCount - 1) as NSNumber)

//  let first =
//  print(sq)
//  print("first digit \(x/sq) middle digit \((x/10)%mid) last digit \(x%10)")
//return false


//func isPalindrome(_ x: Int) -> Bool {
//  var arr = Array(String(x))
//  guard arr.count != 1 else { return true }
//  if (arr.first == arr.last){
//    arr.removeFirst()
//    arr.removeLast()
//    var newString = ""
//    _ = arr.map{ newString = newString + "\($0)"}
//    print(newString)
//    return isPalindrome(Int(newString)!)
//  }
//  print(arr)
//  return false
////  return isPalindrome(String(x))
//}
