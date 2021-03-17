//
//  ContentView.swift
//  Bullseye
//
//  Created by Jinyan Liu on 2021-03-15.
//

import SwiftUI

struct ContentView: View {
  @State private var alertIsVisible: Bool = false
  @State private var knockKnockIsVisible: Bool = false
  var body: some View {
    VStack {
      Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
        .bold()
        .kerning(2.0)
        .multilineTextAlignment(.center)
        .lineSpacing(4.0)
        .font(.footnote)
      Text("89")
        .kerning(-1.0)
        .font(.largeTitle)
        .fontWeight(.black)
      HStack {
        Text("1")
          .bold()
        Slider(value: .constant(50), in: 1.0...100.0)
        Text("100")
          .bold()
      }
      Button(action: {
        self.alertIsVisible = true
      }) {
        Text("Hit me")
      }
      .alert(isPresented: $alertIsVisible,
             content: {
              return Alert(title:Text("Hello, there!"),
                           message: Text("This is my first pop-up"),
                           dismissButton: .default(Text("Awesome!")))
             })
      Button(action: {
        self.knockKnockIsVisible = true
      }) {
        Text("Knock knock")
      }
      .alert(isPresented: $knockKnockIsVisible, content: {
        return Alert(title: Text("Who is there?"), message: Text("Me"), dismissButton: .default(Text("Open!")))
      })
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    ContentView()
      .previewLayout(.fixed(width: 568, height: 320))
  }
}
