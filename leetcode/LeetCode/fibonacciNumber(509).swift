//
//  fibonacciNumber(509).swift
//  leetcode
//
//  Created by Kelbin David on 2022-08-31.
//

import Foundation

func fib(_ n: Int) -> Int {
      if n < 2 {
        return n
      }

      var d = [Int](repeating: 0, count: n + 1)
      d[0] = 0
      d[1] = 1

      for i in 2...n {
        d[i] = d[i - 1] + d[i - 2]
      }

      return d[n]
}
