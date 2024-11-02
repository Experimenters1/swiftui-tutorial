//
//  SwiftUIView_List.swift
//  test1
//
//  Created by Huy vu on 2/11/24.
//

import SwiftUI

struct SwiftUIView_List: View {
//List: Một danh sách gồm năm mục, với các mục chẵn có nền màu tím nhạt.
    var body: some View {
        // List Example
                     List {
                         ForEach(0..<20) { index in
                             Text("List Item \(index)")
                                 .padding()
                                 .background(index % 2 == 0 ? Color.purple.opacity(0.3) : Color.clear)
                                 .cornerRadius(8)
                         }
                     }
                     .frame(height: 600) // Set height to display the list correctly
    }
}

#Preview {
    SwiftUIView_List()
}
