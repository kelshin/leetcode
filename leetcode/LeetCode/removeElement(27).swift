//
//  removeElement.swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-08-19.
//

import Foundation

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
  nums = nums.filter{ i in return i != val}
  return nums.count
}


