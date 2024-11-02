//
//  SwiftUIView_ZStack.swift
//  test1
//
//  Created by Huy vu on 2/11/24.
//

import SwiftUI

struct SwiftUIView_ZStack: View {
    var body: some View {
    //ZStack: Một hình chữ nhật màu vàng với văn bản "ZStack Item" chồng lên.
        // ZStack Example
        ZStack {
            Color.yellow
                .frame(width: 100, height: 100)
                .cornerRadius(12)
            
            Text("ZStack Item")
                .foregroundColor(.white)
                .bold()
        }
        .padding()
    }
}

#Preview {
    SwiftUIView_ZStack()
}
