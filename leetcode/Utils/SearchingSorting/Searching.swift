//
//  Searching.swift
//  Swift-AGDS
//
//  Created by Derrick Park on 2022-03-09.
//

import Foundation

/// Linear Search Algorithm - O(N)
/// Returns the index of the given target value from the collection. Otherwise, nil.
/// - Parameters:
///   - collection: an array of equatable objects
///   - target: search target value
/// - Returns: the index of the given target value from the collection. Otherwise, nil
func linearSearch<T: Equatable>(_ collection: [T], _ target: T) -> Int? {
  for (index, element) in collection.enumerated() where element == target {
    return index
  }
  
  return nil
}


/// Binary Search Algorithm (for sorted collections) - O(lg N)
/// Returns the index of the given target value from the collection. Otherwise, nil.
/// - Parameters:
///   - collection: an array of equatable objects
///   - target: search target value
/// - Returns: the index of the given target value from the collection. Otherwise, nil.
func binarySearch<T: Comparable>(_ collection: [T], _ target: T) -> Int? {
  var lower = 0
  var upper = collection.count - 1
  
  while lower <= upper {
    let mid = (lower + upper) / 2
    if collection[mid] == target {
      return mid
    } else if target < collection[mid] {
      lower = mid + 1
    } else {
      upper = mid - 1
    }
  }
  
  return nil
}


