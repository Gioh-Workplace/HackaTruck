//
//  ContentView.swift
//  Aula 4 ex 2
//
//  Created by Student06 on 04/09/23.
//

import SwiftUI

struct ContentView: View {
    @State var sheetOnOff:Bool = false
    var body: some View {
        VStack {
            NavigationStack {
                NavigationLink("Modo 1"){ FirstMode() }
                NavigationLink("Modo 2"){ SecondMode() }
                Button("Modo 3") {
                   sheetOnOff.toggle()
                }/// Present a sheet once `shouldPresentSheet` becomes `true`.
                .sheet(isPresented: $sheetOnOff) {
                    print("")
                } content: {
                    ThirdMode()
                }

               /* NavigationLink("Modo 3"){ ThirdMode() }*/
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
