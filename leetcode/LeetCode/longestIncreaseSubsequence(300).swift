//
//  longestIncreaseSubsequence.swift
//  leetcode
//
//  Created by Kelbin David on 2022-08-31.
//

import Foundation

func lengthOfLIS(_ nums: [Int]) -> Int {
      var i = 0
      var j = 1
      var longest = 1
      var length = [Int](repeating: 1, count: nums.count)
      while i < j && j < nums.count {
        if nums[j] > nums[i] {
          if length[j] <= length[i] {
          length[j] = length[i] + 1
            if length[j] > longest {
              longest = length[j]
            }
          }
        }
        if i < j {
          i += 1
        }
        if i == j {
          j += 1
          i = 0
        }
      }

      return longest
    }
