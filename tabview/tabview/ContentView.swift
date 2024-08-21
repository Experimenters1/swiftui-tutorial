//
//  ContentView.swift
//  tabview
//
//  Created by Huy vu on 22/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            FirstView()
            .tabItem {
                Image(systemName: "creditcard.viewfinder")
            }
            
            
            SecondView()
                .tabItem {
                    Image(systemName: "creditcard.fill")
                }
            
            ThirdView()
                .tabItem {
                    Image(systemName: "gearshape.circle")
                }
            
                
        }
        
    }
    
    
}

#Preview {
    ContentView()
}
