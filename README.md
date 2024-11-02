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


