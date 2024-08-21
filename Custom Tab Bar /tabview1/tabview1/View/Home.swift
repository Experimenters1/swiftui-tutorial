//
//  Home.swift
//  tabview1
//
//  Created by Huy vu on 4/7/24.
//

import SwiftUI

struct Home: View {
    // View Properties
    @State private var avtiveTab: Tab = .home
    
    var body: some View {
        VStack(spacing: 0){
            TabView(selection: $avtiveTab){
                Text("Home")
                    .tag(Tab.home)
                   ///Hiding Native Tab Bar
                    .toolbar(.hidden,for: .tabBar)
                
                Text("Services")
                    .tag(Tab.services)
                ///Hiding Native Tab Bar
                 .toolbar(.hidden,for: .tabBar)
                
                Text("Partners")
                    .tag(Tab.partners)
                ///Hiding Native Tab Bar
                 .toolbar(.hidden,for: .tabBar)
                
                Text("Activity")
                    .tag(Tab.activity)
                ///Hiding Native Tab Bar
                 .toolbar(.hidden,for: .tabBar)
                
                
            }
            
            CustomTabBar()
        }
    }
    
    /// Custom Tab Bar
    /// With More Easy Customization
    @ViewBuilder
    func CustomTabBar(_ tint: Color = Color("Blue"), _ inactiveTint: Color = .blue) -> some View{
        HStack(spacing: 0){
            ForEach(Tab.allCases,id: \.rawValue){
                TabItem(
                tint: tint, 
                inactiveTint: inactiveTint,
                tab: $0,
                activeTab: $avtiveTab
                )
                
            }
        }
        
        .padding(.horizontal,15)
        .padding(.vertical,15)
        
    }
}


///  Tab Bar Item
struct TabItem: View {
    var tint: Color
    var inactiveTint: Color
    var tab: Tab
    @Binding var activeTab: Tab
    
    
    var body: some View {
//        Image(systemName: tab.systemImage)
        VStack(spacing: 0){
            Image(systemName: tab.systemImage)
                .font(.title2)
//                .foregroundColor(activeTab == tab ? .white : tint)
                .foregroundColor(activeTab == tab ? tint : inactiveTint)
            
                  /// Increasing Size for 
                .frame(width: 35,height: 35)
                .background {
                    if  activeTab == tab {
                        Circle()
                            .fill(tint.gradient)
                    }
                }
            
            
            Text(tab.rawValue)
                .font(.caption)
                .foregroundColor(activeTab == tab ? tint : .gray)
        }
        .frame(maxWidth: .infinity)
        .contentShape(Rectangle())
        .onTapGesture {
            activeTab = tab
        }
    }
}

#Preview {
    ContentView()
}


/// 3:59
