//
//  DetailView_NavigationStack.swift
//  test1
//
//  Created by Huy vu on 2/11/24.
//

import SwiftUI

struct DetailView_NavigationStack: View {
    // Nhận dữ liệu từ ContentView
       var item: String

       var body: some View {
           VStack {
               Text("Chi tiết cho \(item)")
                   .font(.largeTitle)
               Spacer()
           }
           .padding()
           .navigationTitle("Chi tiết")
       }
}

#Preview {
    DetailView_NavigationStack(item:  "Mục 1")
}
