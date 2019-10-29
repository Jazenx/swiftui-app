//
//  UpdateStore.swift
//  DesignCode
//
//  Created by JasonZhour on 2019/10/29.
//  Copyright © 2019 JasonZhour. All rights reserved.
//

import SwiftUI

import Combine

class UpdateStore: ObservableObject {
  @Published  var updates: [Update]
  init(updates: [Update] = []) {
    self.updates = updates
  }
}
