//
//  SwiftUIView_NavigationSplitView.swift
//  SwiftUI navigation
//
//  Created by Huy vu on 2/11/24.
//

import SwiftUI

struct SwiftUIView_NavigationSplitView: View {
    var body: some View {
        NavigationSplitView {
                    List {
                        NavigationLink("Go to Detail NavigationSplitView", destination: DetailView())
                        NavigationLink("Go to Detail NavigationSplitView", destination: DetailView())
                        NavigationLink("Go to Detail NavigationSplitView", destination: DetailView())
                    }
                    .navigationTitle("Items")
                } detail: {
                    Text("Select an item")
                }
    }
}

#Preview {
    SwiftUIView_NavigationSplitView()
}
