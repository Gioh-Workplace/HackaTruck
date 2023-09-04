//
//  ContentView.swift
//  Aula 1
//
//  Created by Student06 on 31/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("imagem1").resizable().scaledToFit()
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("HackaTruck").font(.title).fontWeight(.bold).foregroundColor(.blue)
            HStack{
                Text("Maker")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.yellow)
                Text("Space")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.pink)
            }
        }
         
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
