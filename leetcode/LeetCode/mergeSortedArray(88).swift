//
//  mergeSortedArray.swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-08-27.
//

import Foundation

//[1,2,3,0,0,0]
//[3,5,6]
//func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
//  var slotPointer = (m + n) - 1
//  var leftPointer = (nums1.count - n) - 1 == -1 ? 0 : (nums1.count - n) - 1
//  var rightPointer = n - 1
//  print(slotPointer)
//  print(leftPointer)
//  print(rightPointer)
//  while slotPointer != -1 {
////    if leftPointer == -1 || rightPointer == -1 { break }
//    let a = leftPointer < 0 ? -1 : nums1[leftPointer]
//    print(leftPointer)
//    let b = rightPointer < 0 ? -1 : nums2[rightPointer]
//    print(" i am a \(a)")
//    print(" i am b \(b)")
//    if a >= b || rightPointer == -1 {
//      nums1[slotPointer] = a
//      leftPointer -= 1
//    } else {
//      nums1[slotPointer] = b
//      rightPointer -= 1
//    }
//    slotPointer -= 1
//  }
//}

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
  var slotPointer = nums1.count - 1
  var leftPointer = slotPointer - n
  var rightPointer = n - 1
  while leftPointer >= 0 && rightPointer >= 0 {
    let a = nums1[leftPointer]
    let b =  nums2[rightPointer]
    if a > b  {
      nums1[slotPointer] = a
      leftPointer -= 1
    } else {
      nums1[slotPointer] = b
      rightPointer -= 1
    }
    slotPointer -= 1
  }
  
  while rightPointer >= 0 {
    nums1[slotPointer] = nums2[rightPointer]
    rightPointer -= 1
    slotPointer -= 1
  }
}
