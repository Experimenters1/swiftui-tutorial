//
//  SwiftUIView_NavigationView.swift
//  SwiftUI navigation
//
//  Created by Huy vu on 2/11/24.
//

import SwiftUI

struct SwiftUIView_NavigationView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Home View")
                NavigationLink("Go to Detail NavigationView", destination: DetailView())
            }
            .navigationTitle("Home")
        }
    }
}

#Preview {
    SwiftUIView_NavigationView()
}
