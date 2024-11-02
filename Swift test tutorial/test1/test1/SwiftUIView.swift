//
//  SwiftUIView.swift
//  test1
//
//  Created by Huy vu on 2/11/24.
//

import SwiftUI

struct SwiftUIView: View {
    // Mảng dữ liệu mẫu
      let items = ["Mục 1", "Mục 2", "Mục 3", "Mục 4"]
      // Trạng thái theo dõi mục đã chọn
      @State private var selectedItem: String?

      var body: some View {
          NavigationSplitView {
              // View đầu tiên là danh sách các mục
              List(items, id: \.self, selection: $selectedItem) { item in
                  Text(item)
              }
              .navigationTitle("Danh Sách")
          } detail: {
              // View chi tiết, hiển thị khi người dùng chọn một mục từ danh sách
              if let selectedItem = selectedItem {
                  Text("Chi tiết cho \(selectedItem)")
                      .font(.largeTitle)
              } else {
                  Text("Chọn một mục để xem chi tiết")
                      .foregroundColor(.gray)
              }
          }
      }
}

#Preview {
    SwiftUIView()
}
