//
//  Introducao.swift
//  RPG Manager
//
//  Created by Student06 on 19/09/23.
//

import SwiftUI

struct Introducao: View {
    var body: some View {
        
        ZStack{
            Image("BG").resizable().scaledToFill().ignoresSafeArea()
            Image("bground").resizable().frame(width: 400,height: 500)
            VStack{
            
                Text("Introducao")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Divider()
                
                    .overlay(.black)
                    Text("Albion online é um mmorpg sandbox em ")
                Spacer()
            }.frame(width:400,height: 500)
        }
    }
}

struct Introducao_Previews: PreviewProvider {
    static var previews: some View {
        Introducao()
    }
}
