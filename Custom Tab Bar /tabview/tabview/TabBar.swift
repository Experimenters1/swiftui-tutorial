//
//  Custom Tab Bar .swift
//  tabview
//
//  Created by Huy vu on 23/6/24.
//

import Foundation
import SwiftUI

struct TabBar: View {
    var tabs: [Tab]
    @Binding var selectedIndex: Int
    
    

    var body: some View {
        HStack {
            ForEach(0..<tabs.count) { index in
                Button(action: {
                    selectedIndex = index
                }) {
                    Image(systemName: tabs[index].tabIcon)
                    
                    Text(tabs[index].tabTitle)
                }
                .foregroundColor(index == selectedIndex ? .blue : .gray)
            }
        }
        .padding()
        .background(Color.white)
        .shadow(radius: 5)
    }
}


