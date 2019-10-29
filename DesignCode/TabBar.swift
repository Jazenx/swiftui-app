//
//  TabBar.swift
//  DesignCode
//
//  Created by JasonZhour on 2019/10/29.
//  Copyright © 2019 JasonZhour. All rights reserved.
//

import SwiftUI

struct TabBar: View {
  var body: some View {
    TabView {
      Home().tabItem({
        Image("IconHome")
        Text("Home")
      })
        .tag(1)
      ContentView().tabItem({
        Image("IconCards")
        Text("Certificates")
      })
        .tag(2)
      UpdateList().tabItem({
             Image("IconSettings")
             Text("Updates")
           })
             .tag(3)
      Settings().tabItem({
        Image("IconSettings")
        Text("Settings")
      })
        .tag(4)
    }
  }
}

struct TabBar_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      TabBar()
      TabBar()
        .environment(\.colorScheme, .dark)
        .environment(\.sizeCategory, .extraLarge)
    }
  }
}
