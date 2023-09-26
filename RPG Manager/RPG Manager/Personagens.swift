//
//  Personagens.swift
//  RPG Manager
//
//  Created by Student06 on 19/09/23.
//

import SwiftUI

struct Personagens: View {
    @StateObject var rpg = ViewModelRPG()
    
    var body: some View {
        
        ZStack{
            Image("BG")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.87)
            VStack{
                Image("MeusPersonagens")
                    .resizable()
                    .frame(width: 350,height: 120)
             Spacer()
                
                ScrollView{
                    
                    ForEach(rpg.personagens,id: \._id){ personagem in
                        
                        
                            /*AsyncImage(url: URL(string:personagem.img!))  { image in
                                image.resizable()
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 120, height: 120)*/
                            
                        Text("\(personagem.nome!)")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            
                        }
                        
                    }//Fim for each
                //Fim scroll view
            }
            
            
        }//Fim ZStack
        
    }//Fim body
}

struct Personagens_Previews: PreviewProvider {
    static var previews: some View {
        Personagens()
    }
}
