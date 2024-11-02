//
//  SwiftUIView_VStack.swift
//  test1
//
//  Created by Huy vu on 2/11/24.
//

import SwiftUI

struct SwiftUIView_VStack: View {
//VStack: Hai mục được sắp xếp dọc với màu nền xanh dương và xanh lá.
    var body: some View {
        // VStack Example
        VStack {
            Text("VStack Item 1")
                .padding()
                .background(Color.blue)
                .cornerRadius(8)
            
            Text("VStack Item 2")
                .padding()
                .background(Color.green)
                .cornerRadius(8)
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(12)
        
    }
}

#Preview {
    SwiftUIView_VStack()
}
