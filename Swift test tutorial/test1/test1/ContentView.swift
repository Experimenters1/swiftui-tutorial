//
//  ContentView.swift
//  test1
//
//  Created by Huy vu on 26/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Đi đến Chi tiết", destination: DetailView())
                NavigationLink("Đi đến Thông tin", destination: InfoView())
            }
            .navigationTitle("Danh Sách")
        }
    }
}

#Preview {
    ContentView()
}
