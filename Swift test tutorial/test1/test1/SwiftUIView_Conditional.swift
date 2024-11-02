//
//  SwiftUIView_Conditional.swift
//  test1
//
//  Created by Huy vu on 2/11/24.
//

import SwiftUI

struct SwiftUIView_Conditional: View {
    
    //Conditional: Một điều kiện kiểm tra (được thiết lập là true) hiển thị một văn bản có nền màu teal.
    
    var isVisible: Bool // Biến để điều khiển hiển thị
    
    var body: some View {
        
        VStack {
                    // Conditional Example
                    if isVisible { // Change to false to see the effect
                        Text("Conditional Item: This is visible")
                            .padding()
                            .background(Color.teal)
                            .cornerRadius(8)
                    } else {
                        Text("Conditional Item: This is hidden")
                            .padding()
                            .background(Color.red)
                            .cornerRadius(8)
                    }
                }
                .navigationTitle("SwiftUI Layout Examples")
                .padding()
    }
}

#Preview {
    SwiftUIView_Conditional(isVisible: false)
}
