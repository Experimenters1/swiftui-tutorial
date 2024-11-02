//
//  SwiftUIView_Group.swift
//  test1
//
//  Created by Huy vu on 2/11/24.
//

import SwiftUI

struct SwiftUIView_Group: View {
//Group: Hai mục nhóm lại với nhau, với màu nền cyan và mint.
    var body: some View {
        // Group Example
        Group {
            Text("Group Item 1")
                .padding()
                .background(Color.cyan)
                .cornerRadius(8)
            
            Text("Group Item 2")
                .padding()
                .background(Color.mint)
                .cornerRadius(8)
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(12)
    }
}

#Preview {
    SwiftUIView_Group()
}
