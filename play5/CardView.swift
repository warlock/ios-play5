//
//  CardView.swift
//  play5
//
//  Created by Josep Subils Rigau on 03/04/2020.
//  Copyright © 2020 Josep Subils Rigau. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var imageName: String
    var title: String
    var subtitle: String
    var author: String
    var price: String
    var textColor: Color
    var backgroundColor: Color
    var icon: String?
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            icon.map({
                Image(systemName: $0)
                    .font(.largeTitle)
                    .foregroundColor(.white)
            })
            
            VStack (alignment: .leading) {
                Text(title)
                    .font(.system(size: 30, design: .rounded))
                    .fontWeight(.black)
                    .foregroundColor(textColor)
                
                HStack {
                    Text(price)
                        .font(.system(.caption, design: .rounded))
                        .foregroundColor(.primary)
                    
                    Text("199€")
                        .font(.system(.caption, design: .rounded))
                        .foregroundColor(.secondary)
                        .strikethrough()
                }
                
                Text(subtitle)
                    .font(.system(.body, design: .rounded))
                    .foregroundColor(textColor)
                    .lineLimit(1)
                
                Text(author.uppercased())
                    .font(.system(size: 10, design: .rounded))
                    .foregroundColor(.secondary)
                
                
            }.padding(10)
        }
        .background(backgroundColor)
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(red: 130/255, green: 130/255, blue: 130/255, opacity: 0.5 ), lineWidth: 2))
        .layoutPriority(10)
        .padding([.top, .horizontal])
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(imageName: "a1", title: "Titol", subtitle: "Subtitol del post que nomes pot ocupar una lines maxim i he fet un limitador.", author: "Josep Subils", price: "3€", textColor: .black, backgroundColor: .white)
    }
}



