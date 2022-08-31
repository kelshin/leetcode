//
//  powerOfThree(326).swift
//  leetcode
//
//  Created by Kelbin David on 2022-08-31.
//

import Foundation

func isPowerOfThree(_ n: Int) -> Bool {
    if n == 1 {
        return true
    } else if (n%3 != 0 || n == 0){
        return false
    }
    return isPowerOfThree(n/3)
}
