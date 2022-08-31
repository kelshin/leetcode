//
//  deleteDuplicates.swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-08-26.
//

import Foundation

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
  guard head != nil else { return head }
  let noDuplicate = head
  var current = noDuplicate
  var next = current?.next
  while next != nil {
    let currentValue = current?.val
    print(currentValue)
    if currentValue == next?.val {
      next = next?.next
      current?.next = next
    } else {
      current?.next = next
      current = current?.next
      next = current?.next
    }
  }
  return noDuplicate
}
