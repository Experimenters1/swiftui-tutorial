//
//  SwiftUIView_NavigationStack.swift
//  SwiftUI navigation
//
//  Created by Huy vu on 2/11/24.
//

import SwiftUI

struct SwiftUIView_NavigationStack: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Home View")
                NavigationLink("Go to Detail NavigationStack", destination: DetailView())
            }
            .navigationTitle("Home")
        }
    }
}

#Preview {
    SwiftUIView_NavigationStack()
}
