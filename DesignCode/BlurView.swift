//
//  BlurView.swift
//  DesignCode
//
//  Created by JasonZhour on 2019/10/28.
//  Copyright © 2019 JasonZhour. All rights reserved.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
  
  let style: UIBlurEffect.Style
  
  func makeUIView(context: UIViewRepresentableContext<BlurView>) -> UIView {
    let view = UIView(frame: .zero)
    view.backgroundColor = .clear
    let blurEffect = UIBlurEffect(style: style)
    let blurView = UIVisualEffectView(effect: blurEffect)
    blurView.translatesAutoresizingMaskIntoConstraints = false
    view.insertSubview(blurView, at: 0)
    NSLayoutConstraint.activate([
      blurView.heightAnchor.constraint(equalTo: view.heightAnchor),
      blurView.widthAnchor.constraint(equalTo: view.widthAnchor),
    ])
    return view
  }
  
  func updateUIView(_ uiView: UIView,
                    context: UIViewRepresentableContext<BlurView>) {
    
  }
  
}
