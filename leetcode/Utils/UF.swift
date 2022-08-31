//
//  UF.swift
//  leetcode
//
//  Created by Kelbin David on 2022-08-31.
//

import Foundation

public struct UF {
    /// parent[i] = parent of i
    private var parent: [Int]
    /// size[i] = number of nodes in tree rooted at i
    private var size: [Int]
    /// number of components
    private(set) var count: Int
    
    /// Initializes an empty union-find data structure with **n** elements
    /// **0** through **n-1**.
    /// Initially, each elements is in its own set.
    /// - Parameter n: the number of elements
    public init(_ n: Int) {
        self.count = n
        self.size = [Int](repeating: 1, count: n)
        self.parent = [Int](repeating: 0, count: n)
        for i in 0..<n {
            self.parent[i] = i
        }
    }
    
    /// Returns the canonical element(root) of the set containing element `p`.
    /// - Parameter p: an element
    /// - Returns: the canonical element of the set containing `p`
    public mutating func find(_ p: Int) -> Int {
        // TODO
      try! findError(p)
      var i = p
      while i != parent[i] {
         parent[i] = parent[parent[i]]
         i = parent[i]
      }
        return i
    }
    
    /// Returns `true` if the two elements are in the same set.
    /// - Parameters:
    ///   - p: one elememt
    ///   - q: the other element
    /// - Returns: `true` if `p` and `q` are in the same set; `false` otherwise
    public mutating func connected(_ p: Int, _ q: Int) -> Bool {
        // TODO
      return find(p) == find(q)
    }
    
    /// Merges the set containing element `p` with the set containing
    /// element `q`
    /// - Parameters:
    ///   - p: one element
    ///   - q: the other element
    public mutating func union(_ p: Int, _ q: Int) {
        // TODO
      let rootP = find(p)
      let rootQ = find(q)
      guard rootP != rootQ else { return }
      if !connected(rootP, rootQ){
        if size[rootP] >= size[rootQ] {
          parent[rootQ] = rootP
          size[rootP] += size[rootQ]
        } else {
          parent[rootP] = rootQ
          size[rootQ] += size[rootP]
        }
        count -= 1
      }
    }
  
  private func findError(_ p: Int) throws {
    guard p >= 0 && p < parent.count else {
      throw fatalError("Error: Index out of range")
    }
  }
}
