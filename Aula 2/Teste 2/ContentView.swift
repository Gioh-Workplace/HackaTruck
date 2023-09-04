//
//  ContentView.swift
//  Teste 2
//
//  Created by Student06 on 31/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("imagem1").resizable().padding(.top).scaledToFill().position(x:196.5,y:110)
            
            Image("imagem1").resizable()
            .scaledToFill()
            .clipShape(Circle())
            .frame(width: 250, height: 250)
            .overlay(Text("HackaTruck")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
                .padding(.top, 45.0),alignment: Alignment(horizontal: .center, vertical: .top))
            .position(x:196.5,y:150)
            
            HStack{
                Text("Maker ")
                    .font(.title)
                    .foregroundColor(Color.yellow)
                    .multilineTextAlignment(.trailing)
                    .padding(.bottom, 80.0)
                    .padding(.top,10.0)
                    .padding(.leading, 30)
                    .padding(.trailing,10)
                    .frame(width: 170,height: 180)
                    .background(.black)
                    .position(x:110,y:200)
                Text("Space")
                    .font(.title)
                    .foregroundColor(Color.pink)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 80.0)
                    .padding(.top,10.0)
                    .padding(.trailing,50.0)
                    .frame(width: 170,height: 180)
                    .background(.black)
                    .position(x:60,y:200)
            }
            
            
            
            
                .padding()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
