//
//  mySqrt.swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-08-26.
//

import Foundation

func mySqrt(_ x: Int) -> Int {
  var lowest = 1
  var highest = x
  
  guard x > 1 else { return x }
  
  while lowest < highest {
    let mid = lowest + Int((highest - lowest) / 2)
    print(Int((highest - lowest) / 2))
    if mid * mid == x {
      return mid
    } else if mid * mid > x {
      highest = mid
    } else if mid * mid < x{
      lowest = mid + 1
    }
  }
  return lowest - 1
    }
