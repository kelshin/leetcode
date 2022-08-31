//
//  File.swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-07-23.
//

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
  // Dictionary for searching if exist faster
  var dictNums : [Int: Int] = [:];
  var ans = [Int]();
  for (i, num) in nums.enumerated() {
    if (dictNums[target - num] != nil) {
      ans.append(contentsOf: [dictNums[target - num]!, i]);
      return ans;
    }
    dictNums[num] = i;
  }
  return ans;
}
