//
//  mergeTwoSortedList(21).swift
//  leetcode
//
//  Created by Kelbin David on 2022-08-31.
//

import Foundation

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
  guard list1?.val != nil || list2?.val != nil else { return nil }
        if list1?.val == nil { return list2 }
        if list2?.val == nil { return list1 }
        if list1?.val != nil || list2?.val != nil {
          if list1!.val <= list2!.val{
              return ListNode(list1!.val,mergeTwoLists(list1?.next, list2))
            } else {
              return ListNode(list2!.val,mergeTwoLists(list1, list2?.next))
            }
        } else {
          if list1!.val <= list2!.val{
              return ListNode(list1!.val,(ListNode(list2!.val)))
            } else {
              return ListNode(list2!.val,(ListNode(list1!.val)))
            }
        }
    }
