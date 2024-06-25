//
//  ContentView.swift
//  tabview
//
//  Created by Huy vu on 22/6/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedIndex = 0

    let tabs: [Tab] = [
        Tab(icon: "creditcard.viewfinder", title: "Scan", content: AnyView(FirstView())),
        Tab(icon: "creditcard.fill", title: "Card", content: AnyView(SecondView())),
        Tab(icon: "gearshape.circle", title: "Setting", content: AnyView(ThirdView())),
    ]
    
    
    var body: some View {
        
        VStack {
                   tabs[selectedIndex].tabContent
                   TabBar(tabs: tabs, selectedIndex: $selectedIndex)
               }
//        TabView{
//            FirstView()
//            .tabItem {
//                Image(systemName: "creditcard.viewfinder")
//            }
//            
//            
//            SecondView()
//                .tabItem {
//                    Image(systemName: "creditcard.fill")
//                }
//            
//            ThirdView()
//                .tabItem {
//                    Image(systemName: "gearshape.circle")
//                }
//            
//                
//        }
        
    }
    
    
}

#Preview {
    ContentView()
}
