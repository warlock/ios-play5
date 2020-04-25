//
//  ContentView.swift
//  play5
//
//  Created by Josep Subils Rigau on 03/04/2020.
//  Copyright © 2020 Josep Subils Rigau. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ScrollView {
//  ScrollView(.horizontal) { // AIXO SERIA UN CARROUSEL
      //HStack {
        VStack {
          Text("Llistat de viatjes").font(.system(.largeTitle, design: .rounded)).fontWeight(.bold)
          Text("Preus...")
        }
        CardView(
          imageName: "a1", title: "Titol 1",
          subtitle: "Subtitol del post que nomes pot ocupar una lines maxim i he fet un limitador.",
          author: "Josep Subils", price: "3€", textColor: .black, backgroundColor: .white)

        CardView(
          imageName: "a2", title: "Titol 2",
          subtitle: "Subtitol del post que nomes pot ocupar una lines maxim i he fet un limitador.",
          author: "Josep Subils", price: "3€", textColor: .black, backgroundColor: .white)

        CardView(
          imageName: "a3", title: "Titol 3",
          subtitle: "Subtitol del post que nomes pot ocupar una lines maxim i he fet un limitador.",
          author: "Josep Subils", price: "3€", textColor: .black, backgroundColor: .white)

        CardView(
          imageName: "a4", title: "Titol 4",
          subtitle: "Subtitol del post que nomes pot ocupar una lines maxim i he fet un limitador.",
          author: "Josep Subils", price: "3€", textColor: .black, backgroundColor: .white)
        CardView(
          imageName: "a5", title: "Titol 5",
          subtitle: "Subtitol del post que nomes pot ocupar una lines maxim i he fet un limitador.",
          author: "Josep Subils", price: "3€", textColor: .black, backgroundColor: .white)
      }
    //}
 //}
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
