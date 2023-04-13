// BFS Breadth-first search tìm kiếm theo chiều rộng
/*
 Các bước thực hiện của thuật toán như sau:

     Khởi tạo hàng đợi, thêm ô A vào hàng đợi và đánh dấu ô A là đã ghé thăm.
     Lặp lại các bước sau cho đến khi hàng đợi trống hoặc tìm được ô B:
     a. Lấy ô đầu tiên ra khỏi hàng đợi.
     b. Nếu ô này là ô B, dừng thuật toán và trả về số bước đi để đến được ô B.
     c. Duyệt các ô kề cạnh của ô này (tức là các ô ở bên phải, bên trái, phía trên và phía dưới).
     d. Nếu ô kề chưa được ghé thăm và không phải là ô cản trở, thêm ô này vào hàng đợi và đánh dấu nó là đã ghé thăm, đồng thời cập nhật số bước đi để đến được ô này.
     Nếu không tìm được đường đi từ ô A đến ô B, trả về giá trị -1.
 
 */
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
    var q = [(Cell(x: A.0, y: A.1), 0)]
        var visited = Set([Cell(x: A.0, y: A.1)])
// Khai báo các hướng có thể đi
    let directions = [(0, 1), (0, -1), (1, 0), (-1, 0)]

// Lấy ô đầu tiên ra khỏi hàng đợi
    while !q.isEmpty {
            let (currentCell, currentDist) = q.removeFirst()
        
// Nếu đến được ô B, trả về số bước đi đến được ô B
                if currentCell == Cell(x: B.0, y: B.1) {
                    return currentDist
                }
    
//        Duyệt các ô kề cạnh ô hiện tại ( trên dưới trái phải)
//        Nếu ô kề chưa được ghé thăm và không phải là ô cản trở, thêm ô này vào hàng chờ và đánh dấu nó là đã ghé thăm, đồng thời tính toán khoảng cách từ ô bắt đầu là A
        for (dx, dy) in directions {
            let neighbor = Cell(x: currentCell.x + dx, y: currentCell.y + dy)
            
//             Kiểm tra xem ô kế cạnh với ô hiện tại có phải là vật cản hay không
            if neighbor.x >= 0 && neighbor.x < M && neighbor.y >= 0 && neighbor.y < N && !obstaclesSet.contains(neighbor) && !visited.contains(neighbor) {
                visited.insert(neighbor)
                q.append((neighbor, currentDist + 1))
            }
        }
    }
// Nếu không tìm được đường đi từ ô A đến ô B trả về giá trị là -1
    return -1
}

