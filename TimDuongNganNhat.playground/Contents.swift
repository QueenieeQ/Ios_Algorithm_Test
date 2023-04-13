// BFS Breadth-first search tìm kiếm theo chiều rộng
import Foundation


struct Cell: Hashable {
    let x: Int
    let y: Int
    
    static func == (leftHandSide: Cell, rightHandSide: Cell) -> Bool {
        return leftHandSide.x == rightHandSide.x && leftHandSide.y == rightHandSide.y
    }
}
