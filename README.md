
## Yêu cầu
<img src="https://raw.githubusercontent.com/QueenieeQ/Breadth-first-search/origin/TimDuongDiNgatNhat_ShortestPath/algorithm.playground/Screenshot%202023-04-13%20at%2016.08.05.png" alt="Challenge" width="50%">

##  Giải thuật
> ###  Sử dụng thuật toán tìm kiếm theo chiều rộng BFS (Breadth-first search) trên một bàn cờ vua kích thước MxN với k ô cờ cản trở, tìm đường đi ngắn nhất từ ô A đến ô B, với mỗi bước di chuyển chỉ được phép đi đến ô kề cạnh và không được đi qua ô cản trở.

1. Khởi tạo hàng đợi, thêm ô A vào hàng đợi và đánh dấu ô A là đã ghé thăm.
2. Lặp lại các bước sau cho đến khi hàng đợi trống hoặc tìm được ô B:
- Lấy ô đầu tiên ra khỏi hàng đợi và thêm nó vào danh sách đã duyệt.
- Nếu ô này là ô B, dừng thuật toán và trả về số bước đi để đến được ô B.
- Duyệt các ô kề cạnh của ô này (tức là các ô ở bên phải, bên trái, phía trên và phía dưới).
- Nếu ô kề chưa được ghé thăm và không phải là ô cản trở, thêm ô này vào hàng đợi và đánh dấu nó là đã ghé thăm, đồng thời cập nhật số bước đi để đến được ô này.
3. Nếu không tìm được đường đi từ ô A đến ô B, trả về giá trị -1.
<hr>
<img src="https://github.com/QueenieeQ/Breadth-first-search/blob/origin/TimDuongDiNgatNhat_ShortestPath/algorithm.playground/Screenshot%202023-04-13%20at%2016.13.03.png?raw=true" alt="Challenge" width="90%">

## Kết quả
 **Nhập thử giá trị theo ví dụ**
![result](https://raw.githubusercontent.com/QueenieeQ/Breadth-first-search/origin/TimDuongDiNgatNhat_ShortestPath/algorithm.playground/Screenshot%202023-04-13%20at%2016.04.45.png)
 ## Cách sử dụng
 - Clone repo này
> https://github.com/QueenieeQ/Ios_Algorithm_Test.git
- Mở  Workspace 
>TimDuongDiNganNhat.xcworkspace
- Thay đổi các tham số và in ra kết quả
## Tham khảo
> https://www.programiz.com/dsa/graph-bfs

> https://vnoi.info/wiki/algo/graph-theory/breadth-first-search.md
