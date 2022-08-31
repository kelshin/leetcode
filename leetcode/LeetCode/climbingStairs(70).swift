//
//  climbStairs.swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-08-26.
//

import Foundation

func climbStairs(_ n: Int) -> Int {
  guard n >= 2 else { return n }
  var fib = [0,1]
  while fib.count - 2 != n {
    fib.append(fib.last! + fib[fib.count - 2])
  }
  return fib[fib.count - 1]
    }
