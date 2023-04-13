# Đề bài
![Challenge](https://raw.githubusercontent.com/QueenieeQ/Breadth-first-search/origin/TimDuongDiNgatNhat_ShortestPath/algorithm.playground/Screenshot%202023-04-13%20at%2016.08.05.png)
#  Giải thuật
> ###  Sử dụng thuật toán BFS (Breadth-first search) trên một bàn cờ vua kích thước MxN với k ô cờ cản trở, tìm đường đi ngắn nhất từ ô A đến ô B, với mỗi bước di chuyển chỉ được phép đi đến ô kề cạnh và không được đi qua ô cản trở.

Khởi tạo hàng đợi, thêm ô A vào hàng đợi và đánh dấu ô A là đã ghé thăm.
Lặp lại các bước sau cho đến khi hàng đợi trống hoặc tìm được ô B:
a. Lấy ô đầu tiên ra khỏi hàng đợi.
b. Nếu ô này là ô B, dừng thuật toán và trả về số bước đi để đến được ô B.
c. Duyệt các ô kề cạnh của ô này (tức là các ô ở bên phải, bên trái, phía trên và phía dưới).
d. Nếu ô kề chưa được ghé thăm và không phải là ô cản trở, thêm ô này vào hàng đợi và đánh dấu nó là đã ghé thăm, đồng thời cập nhật số bước đi để đến được ô này.

Nếu không tìm được đường đi từ ô A đến ô B, trả về giá trị -1.
![algorithm](https://github.com/QueenieeQ/Breadth-first-search/blob/origin/TimDuongDiNgatNhat_ShortestPath/algorithm.playground/Screenshot%202023-04-13%20at%2016.13.03.png?raw=true)
# Kết quả
 **Nhập thử giá trị theo ví dụ**
![result](https://raw.githubusercontent.com/QueenieeQ/Breadth-first-search/origin/TimDuongDiNgatNhat_ShortestPath/algorithm.playground/Screenshot%202023-04-13%20at%2016.04.45.png)
 # Cách sử dụng
 - Clone repo này
> https://github.com/QueenieeQ/Breadth-first-search.git
- Mở  Workspace 
>TimDuongDiNganNhat.xcworkspace
- Thay đổi các tham số và in ra kết quả
