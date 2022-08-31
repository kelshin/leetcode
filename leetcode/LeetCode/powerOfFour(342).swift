//
//  powerOfFour.swift
//  leetcode
//
//  Created by Kelbin David on 2022-08-31.
//

import Foundation

func isPowerOfFour(_ n: Int) -> Bool {
    if n == 1 {
        return true
    } else if (n%4 != 0 || n == 0){
        return false
    }
    return isPowerOfFour(n/4)
}
