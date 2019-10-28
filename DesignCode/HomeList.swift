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
            CourseView(
              title: item.title,
              image: item.image,
              bgColor: item.bgColor,
              shadowColor: item.shadowColor
            )
              .onTapGesture {
                self.showContentView.toggle()
            }
          }.sheet(isPresented: $showContentView) {
            ContentView()
          }
        }.padding(.leading, 40)
          .padding(.bottom, 70)
      }
      Spacer()
    }.padding(.top, 85)
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
]

