//
//  SwiftUIView.swift
//  DesignCode
//
//  Created by JasonZhour on 2019/10/28.
//  Copyright © 2019 JasonZhour. All rights reserved.
//

import SwiftUI





struct SwiftUIView: View {
  var courses = coursesData1
  var body: some View {
    NavigationView {
      ZStack {
        List(courses) { item in
          Rectangle().foregroundColor(Color.pink)
        }
        .navigationBarTitle(Text("A List"))
        ZStack {
          BlurView(style: .light)
            .frame(width: 400, height: 500)
          Text("Hey there, I'm on top of the blur")
          
        }
      }
    }
  }
}

struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
  }
}

struct Course1: Identifiable {
  var id = UUID()
  var title: String
  var image: String
  var bgColor: Color
  var shadowColor: Color
}

let coursesData1 = [
  Course1(
    title: "Build an app with SwiftUI",
    image: "Illustration1",
    bgColor: Color("background3"),
    shadowColor: Color("backgroundShadow3")
  ),
  Course1(
    title: "Design Course",
    image: "Illustration2",
    bgColor: Color("background4"),
    shadowColor: Color("backgroundShadow4")
  ), Course1(
     title: "Design Course",
     image: "Illustration2",
     bgColor: Color("background4"),
     shadowColor: Color("backgroundShadow4")
   ), Course1(
      title: "Design Course",
      image: "Illustration2",
      bgColor: Color("background4"),
      shadowColor: Color("backgroundShadow4")
    ), Course1(
       title: "Design Course",
       image: "Illustration2",
       bgColor: Color("background4"),
       shadowColor: Color("backgroundShadow4")
     ), Course1(
        title: "Design Course",
        image: "Illustration2",
        bgColor: Color("background4"),
        shadowColor: Color("backgroundShadow4")
      ), Course1(
         title: "Design Course",
         image: "Illustration2",
         bgColor: Color("background4"),
         shadowColor: Color("backgroundShadow4")
       ), Course1(
          title: "Design Course",
          image: "Illustration2",
          bgColor: Color("background4"),
          shadowColor: Color("backgroundShadow4")
        ),
]
