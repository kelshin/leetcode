//
//  cheapestFlightWithinKStops.swift
//  leetcode
//
//  Created by Kelbin David on 2022-08-31.
//

import Foundation

func findCheapestPrice(_ n: Int, _ flights: [[Int]], _ src: Int, _ dst: Int, _ k: Int) -> Int {
      // create adjlist and add flights
      var adjlist = [[(v: Int, w: Int, p: Int)]](repeating: [], count: n)
      for flight in flights {
        adjlist[flight[0]].append((v: flight[1], w: flight[2], p: 0))
      }
      // use dijkstraPQ
      let costs = dijkstraPQPath(adjlist, src, dst, stops: k)
      // if route cost is 0, return -1
      return costs[dst] == Int.max ? -1 : costs[dst]
    }

func dijkstraPQPath(_ adj: [[(v: Int, w: Int, p: Int)]], _ src: Int, _ dst: Int, stops: Int) -> [Int] {
  
  let n = adj.count
  var d = [Int](repeating: Int.max, count: n + 1)
  d[src] = 0
  
  var pq = IndexPriorityQueue<CompEdgePath>(<)
  for edge in adj[src] {
    pq.enqueue(CompEdgePath(u: src, v: edge.v, w: edge.w, p: edge.p))
  }
  
  while let edge = pq.dequeue() {
          if edge.w > d[dst] {
      continue
    }
   if edge.w < d[edge.v] && edge.p <= stops {
      if edge.v == dst && edge.w < d[edge.v] {
        d[edge.v] = edge.w
        continue
      }
      for e in adj[edge.v] {
        pq.enqueue(CompEdgePath(u: edge.v, v: e.v, w: e.w + edge.w, p: edge.p + 1))
      }
    }
  }
  
  return d
}

public struct CompEdgePath: Comparable, Hashable {
  public var u: Int
  public var v: Int
  public var w: Int
  public var p: Int
  
  public static func < (lhs: CompEdgePath, rhs: CompEdgePath) -> Bool{
    return lhs.w < rhs.w
  }
}

//public struct IndexPriorityQueue<Key: Comparable & Hashable> {
//  /// the array that stores the heap's nodes
//  private(set) var elements = [Key]()
//  /// determines whether this is a max-heap(>) or min-heap(<)
//  private var order: (Key, Key) -> Bool
//  /// dictionary from elements to its heap position(index) in the `elements` array
//  private var indices = [Key: Int]()
//  
//  /// Returns true if this priority queue is empty
//  public var isEmpty: Bool {
//    return elements.isEmpty
//  }
//  
//  /// Returns the number of keys on this priority queue.
//  public var count: Int {
//    return elements.count
//  }
//  
//  /// Returns the min or max key O(1)
//  public var peek: Key? {
//    return elements.first
//  }
//  
//  /// Initializes an empty indexed priority queue with indices
//  /// - Parameter order: order of priority queue (`min <` or `max >`)
//  public init(_ order: @escaping (Key, Key) -> Bool) {
//    self.order = order
//  }
//  
//  /// Returns the index of the given key element. (amortized constant time **O(1)**)
//  /// - Parameter key: key element
//  /// - Returns: the index of the given key element
//  public func index(of key: Key) -> Int? {
//    return indices[key]
//  }
//  
//  /// Is `key` on this priority queue? **O(1)**
//  /// - Parameter key: key element
//  /// - Returns: `true` if key exists on this priority queue; `false` otherwise.
//  public func contains(key: Key) -> Bool {
//    return indices[key] != nil
//  }
//  
//  /// Enqueue key element on this priority queue. **O (log N)**
//  /// - Parameter key: key element
//  public mutating func enqueue(_ key: Key) {
//    guard !contains(key: key) else { return }
//    elements.append(key)
//    indices[key] = elements.count - 1
//    siftUp(from: elements.count - 1)
//  }
//  
//  /// Dequeue the root node on this priority queue. **O(log N)**
//  /// - Returns: the root node if the priority queue is not empty
//  @discardableResult
//  public mutating func dequeue() -> Key? {
//    if isEmpty { return nil }
//    let peek = self.peek!
//    swapAt(0, count - 1)
//    elements.remove(at: count - 1)
//    indices[peek] = nil
//    siftDown(from: 0)
//    return peek
//  }
//  
//  /// Update the old key to the new key value. **O(log N)**
//  /// - Parameters:
//  ///   - oldKey: old key
//  ///   - newKey: new key
//  public mutating func update(oldKey: Key, to newKey: Key) {
//    guard let index = indices[oldKey] else { return }
//    elements[index] = newKey
//    siftDown(from: index)
//    siftUp(from: index)
//  }
//  
//  /// Delete the key at index `i` in this priority queue. **O(log N)**
//  /// - Parameter i: index of the key to delete
//  public mutating func delete(at i: Int) {
//    swapAt(i, count - 1)
//    elements.remove(at: count - 1)
//    indices[elements[i]] = nil
//    siftUp(from: i)
//    siftDown(from: i)
//  }
//  
//  /**
//   Private helper methods
//   */
//  private mutating func siftUp(from i: Int) {
//    var i = i
//    while i > 0 && order(elements[i], elements[parent(of: i)]) {
//      swapAt(parent(of: i), i)
//      i = parent(of: i)
//    }
//  }
//  
//  private mutating func siftDown(from i: Int) {
//    var i = i
//    while left(of: i) < count {
//      var j = left(of: i)
//      if j < count - 1 && order(elements[j + 1], elements[j]) {
//        j += 1
//      }
//      if !order(elements[j], elements[i]) { break }
//      swapAt(i, j)
//      i = j
//    }
//  }
//  
//  private mutating func swapAt(_ i: Int, _ j: Int) {
//    elements.swapAt(i, j)
//    indices[elements[i]] = i
//    indices[elements[j]] = j
//  }
//  
//  @inline(__always) private func parent(of index: Int) -> Int {
//    return (index - 1) / 2
//  }
//  
//  @inline(__always) private func left(of index: Int) -> Int {
//    return 2 * index + 1
//  }
//  
//  @inline(__always) private func right(of index: Int) -> Int {
//    return 2 * index + 2
//  }
//}
//
