//
//  ContentView.swift
//  DesignCode
//
//  Created by JasonZhour on 2019/10/23.
//  Copyright © 2019 JasonZhour. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State var show = false
  @State var viewState = CGSize.zero
  
  var body: some View {
    ZStack {
      BlurView(style: .systemMaterial)
      TitleView()
        .blur(radius: show ? 20 : 0)
      
      CardBottomView()
        .blur(radius: show ? 20 : 0)
        .animation(.default)
      
      CardView()
        .background(show ? Color.red : Color("background9"))
        .cornerRadius(10)
        .shadow(radius: 20)
        .offset(x: 0, y: show ? -400: -40)
        .scaleEffect(0.85)
        .rotationEffect(Angle(degrees: show ? 15 : 0))
        //        .rotation3DEffect(Angle(degrees: show ? 50 : 0), axis: /*@START_MENU_TOKEN@*/(x: 10.0, y: 10.0, z: 10.0)/*@END_MENU_TOKEN@*/)
        .blendMode(.hardLight)
        .animation(.easeInOut(duration: 0.7))
        .offset(x: viewState.width, y: viewState.height)
      
      CardView()
        .background(show ? Color("background5") : Color("background8"))
        .cornerRadius(10)
        .shadow(radius: 20)
        .offset(x: 0, y: show ? -200 : -20)
        .scaleEffect(0.9)
        .rotationEffect(Angle(degrees: show ? 10 : 0))
        //        .rotation3DEffect(Angle(degrees: show ? 40 : 0), axis: /*@START_MENU_TOKEN@*/(x: 10.0, y: 10.0, z: 10.0)/*@END_MENU_TOKEN@*/)
        .blendMode(.hardLight)
        .animation(.easeInOut(duration: 0.5))
        .offset(x: viewState.width, y: viewState.height)
      
      CertificateView()
        .offset(x: viewState.width, y: viewState.height)
        .scaleEffect(0.95)
        .rotationEffect(Angle(degrees: show ? 5 : 0))
        //        .rotation3DEffect(Angle(degrees: show ? 30 : 0), axis: /*@START_MENU_TOKEN@*/(x: 10.0, y: 10.0, z: 10.0)/*@END_MENU_TOKEN@*/)
        .animation(.spring())
        .onTapGesture {
          self.show.toggle()
      }.gesture(DragGesture()
        .onChanged({value in self.viewState = value.translation
          self.show = true
        })
        .onEnded({
          value in self.viewState = CGSize.zero
          self.show = false
        }))
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

struct TitleView: View {
  var body: some View {
    VStack {
      HStack {
        Text("Certificates")
          .font(.largeTitle)
          .fontWeight(.heavy)
        Spacer()
      }
      Image("Illustration5")
      Spacer()
    }.padding()
  }
}

struct CardView: View {
  var body: some View {
    VStack {
      Text("Card Back")
    }
    .frame(width: 340.0, height: 220.0)
  }
}

struct CertificateView: View {
  var item = Certificate(title: "UI Design", image: "Background", width: 340, height: 220)
  
  var body: some View {
    VStack {
      HStack {
        VStack(alignment: .leading) {
          Text(item.title)
            .font(.headline)
            .fontWeight(.bold)
            .foregroundColor(Color("accent"))
            .padding(.top)
          Text("Certificate")
            .foregroundColor(Color.white)
        }
        Spacer()
        Image("Logo").resizable()
          .frame(width: 30.0, height: 30.0)
      }
      .padding(.horizontal)
      Spacer()
      Image(item.image)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .offset(y: 50)
    }
    .frame(width: CGFloat(item.width), height: CGFloat(item.height))
    .background(Color.black)
    .cornerRadius(10)
    .shadow(radius: 10)
  }
}

struct CardBottomView: View {
  var body: some View {
    VStack(spacing: 20) {
      Rectangle()
        .frame(width: 60, height: 6)
        .cornerRadius(3)
        .opacity(0.1)
      Text("寥廓凉天静，晶明白日秋。圆光含万象，碎影入闲流。迥与青冥合，遥同江甸浮。昼阴殊众木，斜影下危楼。宋玉登高怨，张衡望远愁。馀辉如可托，云路岂悠悠。").lineLimit(2)
      Spacer()
    }
    .frame(minWidth: 0, maxWidth: .infinity)
    .padding()
    .padding(.horizontal)
    .background(BlurView(style: .systemMaterial))
    .cornerRadius(30)
    .shadow(radius: 20)
    .offset(y: 600)
  }
}
