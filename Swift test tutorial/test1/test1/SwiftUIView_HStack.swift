//
//  SwiftUIView_HStack.swift
//  test1
//
//  Created by Huy vu on 2/11/24.
//

import SwiftUI

struct SwiftUIView_HStack: View {
    //HStack: Hai mục được sắp xếp ngang với màu nền đỏ và cam.
    
    var body: some View {
        // HStack Example
        HStack {
            Text("HStack Item 1")
                .padding()
                .background(Color.red)
                .cornerRadius(8)
            
            Text("HStack Item 2")
                .padding()
                .background(Color.orange)
                .cornerRadius(8)
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(12)
    }
}

#Preview {
    SwiftUIView_HStack()
}
