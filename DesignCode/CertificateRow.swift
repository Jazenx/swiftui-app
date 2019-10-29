//
//  CertificateRow.swift
//  DesignCode
//
//  Created by JasonZhour on 2019/10/29.
//  Copyright © 2019 JasonZhour. All rights reserved.
//

import SwiftUI

struct CertificateRow: View {
  var certificates = certificateData
  var body: some View {
    VStack(alignment: .leading){
      Text("Certificates")
        .font(.system(size: 20))
        .fontWeight(.heavy)
        .padding(.leading, 40)
      ScrollView(.horizontal, showsIndicators: false) {
        HStack(spacing: 20) {
          ForEach(certificates) { item in
            CertificateView(item: item)
          }
        }
      .padding(20)
        .padding(.leading, 20)
      }
    }
  }
}

struct CertificateRow_Previews: PreviewProvider {
  static var previews: some View {
    CertificateRow()
  }
}

struct Certificate: Identifiable {
  var id = UUID()
  var title: String
  var image: String
  var width: CGFloat
  var height: CGFloat
}

let certificateData = [
  Certificate(title: "UI Design", image: "Certificate1", width: 230, height: 150),
  Certificate(title: "SwiftUI", image: "Certificate2", width: 230, height: 150),
  Certificate(title: "Sketch", image: "Certificate3", width: 230, height: 150),
  Certificate(title: "Framer", image: "Certificate4", width: 230, height: 150),
]
