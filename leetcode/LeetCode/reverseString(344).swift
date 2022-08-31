//
//  reverseString.swift
//  leetcode
//
//  Created by Kelbin David on 2022-08-31.
//

import Foundation

func reverseString(_ s: inout [Character]) {
    //base
    if s.count == 1 {
        return
    }
    let firstChar = s.removeFirst()
    reverseString(&s)
    s.append(firstChar)
}
