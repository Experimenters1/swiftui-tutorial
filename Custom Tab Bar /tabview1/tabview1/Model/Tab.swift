//
//  Tab.swift
//  tabview1
//
//  Created by Huy vu on 4/7/24.
//

import SwiftUI
/// App Tab's
///
enum Tab: String, CaseIterable {
    //Raw Value Used as Tab Title
case home = "Home"
case services = "Services"
case partners = "Partners"
case activity = "Activity"


var systemImage: String { // SF Symbol Image

switch self {
    case .home:
        return "house"
    case .services:
         return "envelope.open.badge.clock"
      case .partners:
         return "hand.raised"
    case .activity:
        return "bell"
    }
}

var index: Int { //Return Current Tab Index
  return Tab.allCases.firstIndex(of: self) ?? 0
}
         
}

