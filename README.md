# swiftui-tutorial
## swiftui tutorial
[Custom Bottom Tab Bar with Animation in SwiftUI](https://www.youtube.com/watch?v=vINUwGWv5OU) <br><br>
[Curved Custom Tab Bar With Orientation Support - Custom Shapes & Paths - SwiftUI Tutorials](https://www.youtube.com/watch?v=XZuc8WnZIS4) <br><br>
##  Xcode Swift code folding/collapse
![image](https://github.com/Experimenters1/swiftui-tutorial/assets/64000769/c8e03457-d34e-48f5-ad04-d638a3f6f6a7) <br><br>

**NavigationSplitView** là một thành phần giao diện điều hướng trong **SwiftUI**, thường được sử dụng để tạo ra giao diện dạng chia đôi màn hình **(split-view)** trên các thiết bị có màn hình lớn, như **iPad hoặc máy Mac.** <br><br>
**1.Tương thích trên nhiều thiết bị:**  <br><br>
 + ) Trên iPad và macOS, **NavigationSplitView** hiển thị cả danh sách và chi tiết trên cùng một màn hình khi ở chế độ **landscape.** <br><br>
 + ) Trên iPhone hoặc trong chế độ portrait, **NavigationSplitView** sẽ chỉ hiển thị từng phần một và cho phép người dùng chuyển đổi giữa danh sách và chi tiết, giống như một quy trình điều hướng thông thường.<br><br>

**2.Cấu trúc khai báo:**  <br><br>
**NavigationSplitView** cho phép lập trình viên định nghĩa nội dung của mỗi phần bằng cách sử dụng cú pháp khai báo. Ví dụ:<br><br>
```swift
NavigationSplitView {
    // Cột danh sách
   Text("tesst")
} detail: {
    // Cột chi tiết
   Text("Select a Landmark")
}

```
![image](https://github.com/user-attachments/assets/e70b1e43-9a08-4867-962f-b26c4c55bdea) <br><br>

![image](https://github.com/user-attachments/assets/48352af0-9d83-4255-92af-76540fbb9c10) <br><br>

![image](https://github.com/user-attachments/assets/5e9bad97-c6dc-4032-8623-6cf014ce8a8a) <br><br>

**1. HStack** <br>
+ )**Đặc điểm:** Sắp xếp các thành phần con theo chiều ngang.<br><br>
+ )**Thuộc tính:** <br><br>
   - ) alignment: Điều chỉnh cách căn chỉnh các thành phần con theo chiều dọc (chẳng hạn như .top, .center, .bottom).
   - ) spacing: Khoảng cách giữa các thành phần con.

**2. VStack** <br>
+ )**Đặc điểm:** Sắp xếp các thành phần con theo chiều dọc.<br><br>
+ )**Thuộc tính:** <br><br>
   - ) alignment: Điều chỉnh căn chỉnh các thành phần con theo chiều ngang (chẳng hạn như .leading, .center, .trailing).
   - ) spacing: Khoảng cách giữa các thành phần con.

**3. ZStack** <br>
+ )**Đặc điểm:** Chồng các thành phần con lên nhau.<br><br>
+ )**Thuộc tính:** <br><br>
   - ) alignment: alignment: Căn chỉnh các thành phần con trong không gian chồng chéo (chẳng hạn như .top, .bottom, .leading, .trailing, .center).

**4.  List** <br>
+ )**Đặc điểm:** Hiển thị danh sách các mục, tự động quản lý sự cuộn và hiển thị các hàng.
+ )**Thuộc tính:** <br><br>
   - ) rowContent: Nội dung của mỗi hàng trong danh sách.
   - ) id: Sử dụng để xác định duy nhất mỗi hàng nếu cần.

**5.   Group** <br>
+ )**Đặc điểm:** Nhóm các thành phần con lại với nhau mà không ảnh hưởng đến bố cục.
+ )**Thuộc tính:** <br><br>
  Không có thuộc tính cụ thể nào, nhưng hữu ích để kết hợp nhiều thành phần mà không làm thay đổi giao diện tổng thể (ví dụ: trong điều kiện).<br><br>

**6.Make Conditional** <br>
+ )**Đặc điểm:** Sử dụng điều kiện để quyết định hiển thị các thành phần.
+ )**Thuộc tính:** <br><br>
  Thường sử dụng câu lệnh if để điều kiện hóa việc hiển thị các thành phần trong SwiftUI.<br><br>
```swift
if condition {
    Text("Condition is true")
} else {
    Text("Condition is false")
}

```
**7.Embed** <br>
+ )**Đặc điểm:** Nhúng một thành phần trong thành phần khác để tổ chức bố cục.
+ )**Cách sử dụng:** <br><br>
  Có thể nhúng HStack, VStack, hoặc ZStack bên trong các thành phần khác để tạo ra giao diện phức tạp hơn.<br><br>

####
**1.NavigationLink** <br>
+ )**Mô tả:** **NavigationLink** được dùng để tạo liên kết điều hướng từ một **view** này sang một **view** khác trong **NavigationView hoặc NavigationStack**.<br><br>
+ )**Khi nào dùng:** Dùng khi bạn muốn thêm liên kết để di chuyển từ một view này sang một view khác.<br><br>

![Screenshot 2024-11-02 at 20 52 47](https://github.com/user-attachments/assets/6d1c8903-81b6-4cee-b9a5-10126933308d) 
![image](https://github.com/user-attachments/assets/a0c7b67c-538f-44da-a45e-27ff2b0c3fbc) <br><br>

**2.NavigationLink** <br>
+ )**Mô tả:** **NavigationStack** là bản nâng cấp của **NavigationView,** có hỗ trợ nhiều tính năng điều hướng mới.<br><br>
+ )**Khi nào dùng:** Dùng từ iOS 16 trở lên, đặc biệt khi bạn muốn quản lý ngăn xếp điều hướng một cách dễ dàng.<br><br>

![image](https://github.com/user-attachments/assets/8bdcb4ff-7cc2-4cfd-a0d3-b508233d4ccc) 
![image](https://github.com/user-attachments/assets/e0f69c2c-e9b2-42f1-9e9b-129d960be527) <br><br>

**3.NavigationView** <br>
+ )**Mô tả:** **NavigationView** là phiên bản gốc dùng để tạo khung điều hướng. Tuy nhiên, kể từ iOS 16, Apple giới thiệu NavigationStack để thay thế, với API mới dễ sử dụng hơn.<br><br>
+ )**Khi nào dùng:** Dùng từ iOS 16 trở lên, đặc biệt khi bạn muốn quản lý ngăn xếp điều hướng một cách dễ dàng.<br><br>

![image](https://github.com/user-attachments/assets/80b0a6f9-fab2-4032-aa4e-cd7006dcc921)
![image](https://github.com/user-attachments/assets/6876d61f-47b6-4627-90c7-7a594d9cc86f) <br><br>

**4.NavigationSplitView** <br>
+ )**Mô tả:** **NavigationSplitView**  được thiết kế để tạo giao diện chia đôi, thích hợp cho iPad và Mac, nơi một phần màn hình hiển thị danh sách điều hướng và phần còn lại hiển thị nội dung.<br><br>
+ )**Khi nào dùng:** Dùng trong các ứng dụng đa nền tảng, đặc biệt là iPad hoặc Mac, để tạo bố cục kiểu Master-Detail.<br><br>







