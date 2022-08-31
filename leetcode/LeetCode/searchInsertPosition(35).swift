//
//  searchInsert.swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-08-19.
//

import Foundation

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
  var lower = 0
  var higher = nums.count - 1
  var mid : Int = 0
  while lower <= higher {
    
    mid = (lower + higher) / 2
    print("lower \(lower) middle \(mid) higher \(higher) and current \(nums[mid])")
    if nums[mid] == target {
      return mid
    } else if target < nums[mid] {
      higher = mid - 1
    } else {
      lower = mid + 1
    }
  }
  return target > nums[mid] ? mid + 1 : mid
}
