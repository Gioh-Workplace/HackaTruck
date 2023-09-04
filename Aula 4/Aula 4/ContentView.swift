//
//  ContentView.swift
//  Aula 4
//
//  Created by Student06 on 04/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Main()
                .tabItem{
                    Label("Home", systemImage: "figure.stand.line.dotted.figure.stand")
                }//Fim tela Main
            SearchIcon()
                .tabItem{
                    Label("Search",systemImage:"magnifyingglass")
                } //Fim tela 2
            Photos()
                .tabItem{
                    Label("Photos",systemImage:"photo")
                } //Fim tela 3
            Messages()
                .tabItem{
                    Label("Messages",systemImage:"message.fill" )
                }//Fim tela 4
            Profile()
                .tabItem{
                    Label("Profile",systemImage:" person.crop.circle")
                }
            } //Fim TabView
        }//Fim
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
