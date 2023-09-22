//
//  UploadPersonagem.swift
//  RPG Manager
//
//  Created by Student06 on 22/09/23.
//

import SwiftUI

struct UploadPersonagem: View {
    @State var nome:String = ""
    @State var raca:String = ""
    @State var classe:String = ""
    @State var idade:String = ""
    @State var player:String = ""
    @State var url:String = ""
    var body: some View {
        ZStack{
            Image("BG")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.87)
            VStack{
                Image("Novo")
                    .resizable()
                    .frame(width: 300,height: 100)
                Spacer()
                
                ZStack{
                    Image("bground")
                        .resizable()
                        .frame(width: 360,height: 380)
                        .cornerRadius(10)
                    
                    VStack{
                        
                        HStack{
                            
                            VStack{
                                
                                HStack{
                                    Text("Nome: ")
                                        

                                    TextField(
                                        "Insira aqui",
                                        text: $nome
                                        
                                    )
                                }.frame(width: 150,height: 15)
                                    .padding(.leading, 30.0)
                                
                                Divider().overlay(.black)
                                    .frame(width: 360,height:2)
                                    .padding(.trailing, -220.0)
                                    
                                
                                HStack{
                                    Text("Raça: ")
                                        

                                    TextField(
                                        "Insira aqui",
                                        text: $raca
                                        
                                    )
                                }.frame(width: 150,height: 15)
                                    .padding(.leading, 30.0)
                                
                                Divider().overlay(.black).frame(width: 360,height:2)
                                    .padding(.trailing, -220.0)
                                    
                                HStack{
                                    
                                    Text("Classe: ")
                                    
                                    
                                    TextField(
                                        "Insira aqui",
                                        text: $classe
                                        
                                    )
                                }.frame(width: 150,height: 15)
                                    .padding(.leading, 30.0)
                            }
                            
                            Divider()
                                .overlay(.black)
                                .frame(width: 2,height:116)
                                .padding(.bottom, -22.5)
                            
                            VStack{
                                HStack{
                                    Text("URL: ")
                                        

                                    TextField(
                                        "Insira aqui",
                                        text: $url
                                        
                                    )                                    .frame(width:90)
                                }.frame(width: 180,height: 15)
                                    .padding(.leading,-40)
                                    

                              Divider()
                                    
                                
                                HStack{
                                Text("Idade: ")
                                        .padding(.leading,-5)
                                    TextField(
                                        "Insira aqui",
                                        text: $idade
                                        
                                    )
                                    .frame(width:80)
                                    
                                }.frame(width: 180,height: 15)
                                    .padding(.leading,-40)
                                
                               Divider()
                                
                                HStack{
                                Text("Player: ")
                                    
                                    TextField(
                                        "Insira aqui",
                                        text: $player
                                        
                                    ).frame(width:90)
                                    
                                }.frame(width: 180,height: 15)
                                    .padding(.leading,-30)
                                    
                                
                            }
                            
                        }.frame(width: 400,height: 120)
                        //Fim Hstack
                        
                        
                        Divider().overlay(.black)
                            .frame(width: 360,height:2)
                        
                        
                        Text("Descrição:")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.top,-5)
                        
                        ScrollView{
                            Text("")
                                .frame(width: 330)
                            
                        }
                        Spacer()
                    }
                }//Fim ZStack
                Spacer()
                NavigationLink{UploadPersonagem2()} label:{
                    ZStack{
                        Rectangle()
                            .frame(width: 200,height: 70)
                            .foregroundColor(.cyan)
                            .cornerRadius(40)
                        Text("Next")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            
                    }
                }
                Spacer()//Fim label
            }//Fim Vstack
        }//Fim ZStack
    }
}

struct UploadPersonagem_Previews: PreviewProvider {
    static var previews: some View {
        UploadPersonagem()
    }
}
