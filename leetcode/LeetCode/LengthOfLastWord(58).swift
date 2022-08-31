//
//  LengthOfLastWord.swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-08-21.
//

import Foundation

func lengthOfLastWord(_ s: String) -> Int {
  guard s.lastIndex(of: " ") != nil else { return 0 }
  let split = s.split(separator: " ")
  return split[split.count - 1].count
    }
