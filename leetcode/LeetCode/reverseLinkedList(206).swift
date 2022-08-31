//
//  reverseList.swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-08-10.
//

import Foundation

//func reverseList(_ head: ListNode?) -> ListNode? {
////  print(head?.val)
//
//  guard head?.val != nil else { return ListNode() }
//  guard head?.next?.val != nil else { return ListNode(head!.val) }
//
//  let currentNode = ListNode(head!.val)
//  let nextNode = reverseList(head?.next)
//  return ListNode(currentNode.val, nextNode)
//}

func reverseList(_ head: ListNode?) -> ListNode? {

  guard head?.val != nil else { return ListNode() }
//  guard head?.next?.val != nil else { return ListNode(head!.val) }
  var listHead = head
  var prev : ListNode?
  
  while listHead != nil {
    let next = listHead?.next
    listHead?.next = prev
    prev = listHead!
    listHead = next
  }
  
  return prev
}

