//
//  Tab.swift
//  tabview
//
//  Created by Huy vu on 23/6/24.
//

import Foundation


import SwiftUI

struct Tab {
    var tabIcon: String
    var tabTitle: String
    var tabContent: AnyView

    init(icon: String, title: String, content: AnyView) {
        self.tabIcon = icon
        self.tabTitle = title
        self.tabContent = content
    }
}
