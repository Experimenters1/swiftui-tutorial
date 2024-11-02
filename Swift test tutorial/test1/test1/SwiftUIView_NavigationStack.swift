//
//  SwiftUIView_NavigationStack.swift
//  test1
//
//  Created by Huy vu on 2/11/24.
//

import SwiftUI

struct SwiftUIView_NavigationStack: View {
    // Mảng dữ liệu mẫu
     let items = ["Mục 1", "Mục 2", "Mục 3", "Mục 4"]

     var body: some View {
         NavigationStack {
             List(items, id: \.self) { item in
                 // Điều hướng sang màn hình chi tiết khi nhấn vào từng mục
                 NavigationLink(destination: DetailView_NavigationStack(item: item)) {
                     Text(item)
                 }
             }
             .navigationTitle("Danh Sách")
         }
     }
}

#Preview {
    SwiftUIView_NavigationStack()
}
