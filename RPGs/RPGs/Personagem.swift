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
                .scaledToFill().ignoresSafeArea().opacity(0.6)
            VStack{
                Spacer()
                //Image(char.image)
                AsyncImage(url:URL(string:"\(char.img!)")) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }.frame(width: 200,height: 200)
                Text("\(char.nome!)")
                    .font(.largeTitle)
                //Fim imagem/nome
                ZStack{
                    Image("bground")
                        .resizable()
                        .frame(width: 400,height: 450)
                        .cornerRadius(10)
                    VStack{
                        HStack{
                                
                                VStack{
                                    
                                    Text("Raça: \(char.raca!)")
                                    Divider().overlay(.black)
                                        
                                    Text("Classe: \(char.classe!)")
                                }
                                                        
                                                        Divider().overlay(.black).frame(width: 2,height: 100).padding(.bottom, -16.0)
                                
                                VStack{
                                    Text("Idade: \(char.idade!)")
                                    Divider().overlay(.black)
                                    Text("Player: \(char.jogador!)")
                                    
                                }
                                
                            }.frame(width: 400,height: 100)
                            //Fim Hstack
                                
                        
                        Divider().overlay(.black)
                        
                        
                        Text("Descrição:")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            
                        ScrollView{
                            Text("\(char.desc!)")
                                .frame(width: 380)
                                
                        }
                        Spacer()
                    }
                }//Fim ZStack
               
            }//Fim Vstack character
            
            
        } //Fim primeiro ZStack
    }// Fim body
    
} // fim struct

struct Personagem_Previews: PreviewProvider {
    static var previews: some View {
        Personagem(char: RPG(_id:"",nome: "Sailyen",jogador : "Giovani",raca : "Meio-Elfo",classe : "Feiticeiro",idade : "210",sistema: "D&D5E",desc:"Among us  ",img:""))
    }
}
