//
//  ContentView.swift
//  CustomBottomTabBar
//
//  Created by Huy vu on 29/6/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentTab: Tab = .Notifications
    
    
    //Hide Native Bar
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    @Namespace var animation
    
    
    
    
    var body: some View {
        TabView(selection: $currentTab) {
            Text("Home View")
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                .background(Color("bg").ignoresSafeArea())
                .tag(Tab.Home)
            
            Text("Search View")
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                .background(Color("bg").ignoresSafeArea())
                .tag(Tab.Search)
            
            Text("Notifications View")
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                .background(Color("bg").ignoresSafeArea())
                .tag(Tab.Notifications)
            
            Text("Profile View")
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                .background(Color("bg").ignoresSafeArea())
                .tag(Tab.Profile)
            
            Text("Cart View")
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                .background(Color("bg").ignoresSafeArea())
                .tag(Tab.Cart)
            
            
        }
        .overlay(
            HStack (spacing: 0){
                ForEach(Tab.allCases,id: \.rawValue) { tab in
                    TabButton(tab: tab)
                }
                
                .padding(.vertical)
                .padding(.bottom,getSafeArea().bottom == 0 ? 5 : (getSafeArea().bottom - 15))
                .background(Color.white)
            }
            , alignment: .bottom
        ).ignoresSafeArea(.all,edges: .bottom)
        
  
    }
    func TabButton(tab: Tab) -> some View{
        GeometryReader { proxy in
            
            Button(action: {
                withAnimation(.spring){
                    withAnimation(){
                        currentTab = tab
                    }
                }
            },
            label: {
                VStack(spacing: 0){
                    Image(systemName: currentTab == tab ?  tab.rawValue + ".fill"  : tab.rawValue)
                    
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25,height: 25)
                        .frame(maxWidth: .infinity)
                        
                        .foregroundColor(currentTab == tab ? .primary : .secondary)
                        .padding(currentTab == tab ? 15 : 0)
                        .background(
                            ZStack {
                                if currentTab == tab {
                                    MaterialEffect(style: .light)
                                        .clipShape(Circle())
                                        .matchedGeometryEffect(id: "TAB", in: animation)
                                    
                                    Text(tab.tabName).foregroundColor(.primary)
                                        .font(.footnote).padding(.top,50)

                                }
                            }
                        )
                    
                        .contentShape(Rectangle())
                        .offset(y: currentTab == tab ? -35 : 0)
                        
                }
            })
            
        }
        .frame(height: 25)
    }
}

#Preview {
    ContentView()
}


// Tabbar enum
enum Tab: String, CaseIterable {
    case Home = "house"
    case Search = "magnifyingglass.circle"
    case Notifications = "bell"
    case Profile = "person"
    case Cart = "cart"
    
    
    var tabName: String{
        switch self{
        case .Home:
           return "Home"
        case .Search:
            return "Cart"
        case .Profile:
            return "Profile"
        case .Notifications:
            return "Notifications"
        case .Cart:
            return "Cart"
        }
    }
}


//Safe Area

extension View {
    func getSafeArea() -> UIEdgeInsets {
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return  .zero
        }
        guard let safeArea = screen.windows.first?.safeAreaInsets else {
            return .zero
        }
        
        return safeArea
    }
}

struct MaterialEffect: UIViewRepresentable {
    var style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> some UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style) )
        
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        //
    }
}
