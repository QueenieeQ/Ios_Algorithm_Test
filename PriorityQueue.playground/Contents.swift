import Foundation
// wrong implement with Boolean array

//class Cell: Hashable, Equatable {
//    var x: Int
//    var y: Int
//
//    init(_ x: Int, _ y: Int) {
//        self.x = x
//        self.y = y
//    }
//}
//
//func shortestPath(_ m: Int, _ n: Int, _ obstacles: Set<Cell>, _ A: Cell, _ B: Cell) -> Int {
//    var visited = Set<Cell>()
//    visited.insert(A)
//
//    var queue = [(A, 0)]
//    let directions = [Cell(0, 1), Cell(0, -1), Cell(1, 0), Cell(-1, 0)]
//
//    while !queue.isEmpty {
//        let (currCell, currDist) = queue.removeFirst()
//
//        if currCell == B {
//            return currDist
//        }
//
//        for dir in directions {
//            let neighbor = Cell(currCell.x + dir.x, currCell.y + dir.y)
//            if neighbor.x < 0 || neighbor.x >= m || neighbor.y < 0 || neighbor.y >= n || obstacles.contains(neighbor) || visited.contains(neighbor) {
//                continue
//            }
//            let newDist = currDist + 1
//            queue.append((neighbor, newDist))
//            visited.insert(neighbor)
//        }
//    }
//
//    return -1
//}

let M = 7
let N = 6
let obstacles = [(5, 2), (4, 3), (2, 5)]
let A = (3, 2)
let B = (6, 4)
//
//let shortestDistance = shortestPath(M, N, obstacles, A, B)
//print("Duong di ngan nhat la: \(shortestDistance)")
