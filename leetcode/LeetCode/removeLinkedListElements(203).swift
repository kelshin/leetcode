//
//  removeDupllicates.swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-08-15.
//

import Foundation

func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
  guard head?.val != nil else { return head }
  
  let newHead = removeElements(head?.next, val)
  
  if head?.val == val {
    return newHead
  } else {
    return ListNode(head!.val, newHead)
  }
}
