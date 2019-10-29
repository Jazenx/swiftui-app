//
//  HomeList.swift
//  DesignCode
//
//  Created by JasonZhour on 2019/10/25.
//  Copyright © 2019 JasonZhour. All rights reserved.
//

import SwiftUI

struct HomeList: View {
  @State var showContentView = false
  var courses = coursesData
  var body: some View {
    ScrollView {
      VStack {
        HStack {
          VStack(alignment: .leading) {
            Text("Courses")
              .font(.largeTitle)
              .fontWeight(.heavy)
            Text("22 courses")
              .foregroundColor(.gray)
          }
          Spacer()
        }.padding(.leading, 70)
          .padding(.bottom, 40)
        
        ScrollView(.horizontal, showsIndicators: false) {
          HStack(spacing: 30) {
            ForEach(courses) { item in
              GeometryReader { geometry in
                CourseView(
                  title: item.title,
                  image: item.image,
                  bgColor: item.bgColor,
                  shadowColor: item.shadowColor
                )
                  .onTapGesture {
                    self.showContentView.toggle()
                }
                .rotation3DEffect(Angle(degrees: Double(geometry.frame(in: .global).minX - 40) / -20), axis: (x: 0, y: 10, z: 0))
              }
              .frame(width: 246, height: 360)
            }.sheet(isPresented: $showContentView) {
              ContentView()
            }
          }.padding(.leading, 40)
            .padding(.top,20)
            .padding(.bottom, 70)
            Spacer()
        }
        CertificateRow()
      }.padding(.top, 100)
    }
  }
}

struct HomeList_Previews: PreviewProvider {
  static var previews: some View {
    HomeList()
  }
}

struct CourseView: View {
  var title = "Build an app with SwiftUI"
  var image = "Illustration1"
  var bgColor = Color("background3")
  var shadowColor = Color("backgroundShadow3")
  var body: some View {
    VStack(alignment: .leading){
      Text(title)
        .font(.title)
        .fontWeight(.bold)
        .foregroundColor(.white)
        .padding(30)
        .lineLimit(4)
        .padding(.trailing, 50)
      Spacer()
      Image(image)
        .resizable()
        .renderingMode(.original)
        .aspectRatio(contentMode: .fit)
        .frame(width: 246, height: 200)
        .padding(.bottom, 30)
    }
    .background(bgColor)
    .cornerRadius(30)
    .frame(width: 246, height: 360)
    .shadow(color: shadowColor, radius: 20, x: 0, y: 20)
  }
}

struct Course: Identifiable {
  var id = UUID()
  var title: String
  var image: String
  var bgColor: Color
  var shadowColor: Color
}

let coursesData = [
  Course(
    title: "Build an app with SwiftUI",
    image: "Illustration1",
    bgColor: Color("background3"),
    shadowColor: Color("backgroundShadow3")
  ),
  Course(
    title: "Design Course",
    image: "Illustration2",
    bgColor: Color("background4"),
    shadowColor: Color("backgroundShadow4")
  ),
  Course(
    title: "Swift UI Advanced",
    image: "Illustration3",
    bgColor: Color("background7"),
    shadowColor: Color(hue: 0.677, saturation: 0.791, brightness: 0.788, opacity: 0.5)
  ),
  Course(
    title: "Framer Playgrounds",
    image: "Illustration4",
    bgColor: Color("background8"),
    shadowColor: Color(hue: 0.677, saturation: 0.791, brightness: 0.788, opacity: 0.5)
  ),
  Course(
    title: "Flutter for Designers",
    image: "Illustration5",
    bgColor: Color("background9"),
    shadowColor: Color(hue: 0.677, saturation: 0.791, brightness: 0.788, opacity: 0.5)
  )
]

