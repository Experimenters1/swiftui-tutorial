//
//  Question.swift
//  test
//
//  Created by Huy vu on 30/10/24.
//

import SwiftUI

struct Question: View {
    let items = ["Apple", "Banana", "Cherry", "Banana"]
    
    @StateObject private var viewModel = QuestionViewModel() // Khởi tạo ViewModel
    
    var body: some View {
//    VStack: Sử dụng để sắp xếp các views theo chiều dọc.
        VStack {
            Text("Danh sách tên:")
                            .font(.headline)
//ForEach(names, id: \.self) sẽ lặp qua từng phần tử trong mảng names và tạo một Text view cho mỗi tên trong mảng.
            ForEach(items, id: \.self) { item in
                Text(item)
            }
        }
        
        List(items, id: \.self) { item in
            Text(item)
        }
        
//Các views bên trong Group sẽ không thay đổi cách bố trí của VStack.
        Group {
            Text("Họ và tên: Nguyễn Văn A")
            Text("Email: nguyenvana@email.com")
            Text("Số điện thoại: 0123456789")
        }
        .font(.body)
        .foregroundColor(.blue)
        
        
        // Mảng các đối tượng Person
           let people = [
            Person(id: UUID(), name: "huy", age: 2 ),
            Person(id: UUID(), name: "hoa", age: 3),
            Person(id: UUID(), name: "hong", age: 5)
           ]
        
        List(people) { person in
            Text(person.name)
        }
        
        
        
        // Hiển thị dữ liệu đã xử lý
        VStack {
            VStack(alignment: .leading) {
                           Text("Doubled Numbers: \(viewModel.doubledNumbers.map(String.init).joined(separator: ", "))")
                           
                           Text("Sorted Names: \(viewModel.sortedNames.joined(separator: ", "))")
                           
                           Text("Sorted People Names: \(viewModel.sortedPeopleNames.joined(separator: ", "))")
                       }
            .padding()
        }
        .onAppear {
                   viewModel.processData() // Gọi hàm xử lý dữ liệu khi view xuất hiện
               }
        
    }
}

#Preview {
    Question()
}
