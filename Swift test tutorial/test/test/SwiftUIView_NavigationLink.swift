//
//  SwiftUIView_NavigationLink.swift
//  test
//
//  Created by Huy vu on 2/11/24.
//

import SwiftUI

struct SwiftUIView_NavigationLink: View {
    var body: some View {
        List(landmarks) { landmark in
            NavigationLink {
                LandmarkDetail(landmark: landmark)
            } label: {
                LandmarkRow(landmark: landmark)
            }
        }
        .navigationTitle("Landmarks")
    }
}

#Preview {
    SwiftUIView_NavigationLink()
}
