//
//  SwiftUIView_Embed.swift
//  test1
//
//  Created by Huy vu on 2/11/24.
//

import SwiftUI

struct SwiftUIView_Embed: View {
    var body: some View {
        VStack {
                   Text("Welcome to SwiftUI")
                       .font(.largeTitle)
                   
                   HStack {
                       Image(systemName: "star")
                           .foregroundColor(.yellow) // Set color for icon
                       Text("Favorites")
                           .foregroundColor(.black) // Set color for text
                   }
                   .padding()
                   .padding()
                               .background(Color.blue.opacity(0.2)) // Background color for HStack
                               .cornerRadius(8)
                               .border(Color.blue, width: 2) // Border color and width for HStack

                   List {
                       ForEach(0..<5) { index in
                           HStack {
                               Text("Item \(index)")
                               Spacer()
                               if index % 2 == 0 {
                                   Text("Even")
                               }
                           }
                           .padding()
                           .background(index % 2 == 0 ? Color.purple.opacity(0.1) : Color.clear)
                            .cornerRadius(8)
                       }
                   }
                   .listStyle(.plain) // Optional: makes the list look simpler
                .border(Color.green, width: 2) // Border color for List
               }
               .padding()
               .background(Color.red.opacity(0.1)) // Background color for outer VStack
                       .border(Color.red, width: 2) // Border color for outer VStack
                       .cornerRadius(12) // Rounded corners for outer VStack
    }
}

#Preview {
    SwiftUIView_Embed()
}
