//
//  UpdateDetail.swift
//  DesignCode
//
//  Created by JasonZhour on 2019/10/28.
//  Copyright © 2019 JasonZhour. All rights reserved.
//

import SwiftUI

struct UpdateDetail: View {
  var title = "Swift UI"
  var text = "Loading"
  var image = "Illustration1"
  
  var body: some View {
    VStack(spacing: 20) {
      Text(title)
        .font(.largeTitle)
        .fontWeight(.heavy)
      Image(image)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(height: 200)
      Text(text)
        .lineLimit(nil)
        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
      Spacer()
    }
    .padding(30)
  }
}

struct UpdateDetail_Previews: PreviewProvider {
  static var previews: some View {
    UpdateDetail()
  }
}
