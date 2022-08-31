//
//  Sorting.swift
//  Swift-AGDS
//
//  Created by Derrick Park on 2022-03-09.
//

import Foundation

// Bubble Sort
// Time Complexity: O(N^2)
// Space Complexity: O(N)
func bubbleSort<T: Comparable>(_ arr: [T], _ comparator: (T, T) -> Bool) -> [T] {
  guard arr.count > 1 else { return arr }
  
  var elements = arr
  for i in 0..<elements.count - 1 {
    for j in 1..<elements.count - i {
      if comparator(elements[j], elements[j - 1]) {
        let temp = elements[j - 1]
        elements[j - 1] = elements[j]
        elements[j] = temp
      }
    }
  }
  return elements
}


// Selection Sort
// Time Complexity: O(N^2)
// Space Complexity: O(N)
func selectionSort<T: Comparable>(_ arr: [T], _ comparator: (T, T) -> Bool) -> [T] {
  guard arr.count > 1 else { return arr }
  
  var elements = arr
  for i in 0..<elements.count - 1 {
    var indexMin = i
    for j in i+1..<elements.count {
      if comparator(elements[j], elements[indexMin]) {
        indexMin = j
      }
    }
    if i != indexMin {
      elements.swapAt(indexMin, i)
    }
  }
  
  return elements
}

// Insertion Sort
// Time Complexity: O(N^2)
// Space Complexity: O(N)
func insertionSort<T: Comparable>(_ arr: [T], _ comparator: (T, T) -> Bool) -> [T] {
  guard arr.count > 1 else { return arr }
  
  var elements = arr
  for i in 1..<elements.count {
    var j = i
    let toInsert = elements[j]
    while j > 0 && comparator(toInsert, elements[j - 1]) {
      // shift
      elements[j] = elements[j - 1]
      j -= 1
    }
    elements[j] = toInsert
  }
  
  return elements
}

// Merge Sort
// Time Complexity: O(N lgN)
// Space Complexity: O(N)
func mergeSort<T: Comparable>(_ arr: [T], _ comparator: (T, T) -> Bool) -> [T] {
  guard arr.count > 1 else { return arr }
  let mid = arr.count / 2
  let sortedLeft = mergeSort(Array(arr[..<mid]), comparator)
  let sortedRight = mergeSort(Array(arr[mid...]), comparator)
  return merge(sortedLeft, sortedRight, comparator)
}

// Time Complexity: O(N)
func merge<T: Comparable>(_ l: [T], _ r: [T], _ comparator: (T, T) -> Bool) -> [T] {
  var i = 0
  var j = 0
  var merged: [T] = []
  while true {
    guard i < l.count else {
      merged.append(contentsOf: r[j...])
      break
    }
    guard j < r.count else {
      merged.append(contentsOf: l[i...])
      break
    }
    if comparator(l[i], r[j]) {
      merged.append(l[i])
      i += 1
    } else {
      merged.append(r[j])
      j += 1
    }
  }
  return merged
}


// Quick Sort
// * Quick Sort (Does not sort in-place)
// Space Complexity: O(n) -> Your implementation should be O(1) (which means you're not supposed to create new arrays)
func quickSortSlow<T: Comparable>(_ arr: [T]) -> [T] {
  if arr.count <= 1 { return arr }
  var elements = arr
  let pivot = elements.removeLast()
  let lessOrEqual = elements.filter { $0 <= pivot }
  let greater = elements.filter { $0 > pivot }
  return quickSortSlow(lessOrEqual) + [pivot] + quickSortSlow(greater)
}

// * Quick Sort (sorts in-place)
// Time Complexity: O(N lgN) -> technically O(N^2) in the worst case
// Space Complexity: O(1)
func quickSort<T: Comparable>(_ arr: inout [T], _ start: Int, _ end: Int) {
  // TODO
}

/// Returns the index of the pivot
/// - Parameters:
///   - arr: the array
///   - start: the start index
///   - end: the end index
/// - Returns: the index of the pivot after partitioning
func partition<T: Comparable>(_ arr: inout [T], _ start: Int, _ end: Int) -> Int {
  // TODO
  return 0
}

