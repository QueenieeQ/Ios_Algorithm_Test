// BFS Breadth-first search tìm kiếm theo chiều rộng
import Foundation


struct Cell: Hashable {
    let x: Int
    let y: Int
    
    static func == (leftHandSide: Cell, rightHandSide: Cell) -> Bool {
        return leftHandSide.x == rightHandSide.x && leftHandSide.y == rightHandSide.y
    }
}
func shortestPath(_ M: Int, _ N: Int, _ obstacles: [(Int, Int)], _ A: (Int, Int), _ B: (Int, Int)) -> Int {
//    Tạo set các vật cản
    let obstaclesSet = Set(obstacles.map(Cell.init))
// Khởi tạo hàng chờ với điểm bắt đầu là A và lần lượt thăm các ô xung quanh, ghi chúng vào dictionary để so sánh. Set khoảng cách của A là 0
    return 1
    var q = [(Cell(x: A.0, y: A.1), 0)]
        var visited = Set([Cell(x: A.0, y: A.1)])
        
}
