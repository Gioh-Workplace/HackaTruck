//
//  Personagem.swift
//  RPGs
//
//  Created by Student06 on 13/09/23.
//

import SwiftUI

struct Personagem: View {
    @State var char : RPG
    var body: some View {
        ZStack{
            Image("BG")
                .resizable()
                .scaledToFill().ignoresSafeArea().opacity(0.85)
            VStack{
                //Image(char.image)
                Text("\(char.nome!)")
                    .font(.largeTitle)
                ZStack{
                    Rectangle()
                        .fill(.white)
                        .frame(width: 900,height: 100)
                HStack{
                    
                    VStack{
                        
                        Text("Raça:\(char.raca!)")
                        
                        Text("Classe:\(char.classe!)")
                    }
                    
                    VStack{
                        Text("Idade:\(char.idade!)")
                        Text("\(char.jogador!)")
                    }
                }//Fim Hstack
            }//Fim ZStack
                
                //Text("char.description")
            }//Fim Vstack character
            
            
        }
    }
    
}

struct Personagem_Previews: PreviewProvider {
    static var previews: some View {
        Personagem(char: RPG(_id:"",nome: "Sailyen",jogador : "Giovani Augusto Justo",raca : "Meio-Elfo",classe : "Feiticeiro",idade : "210",sistema: "D&D5E"))
    }
}
