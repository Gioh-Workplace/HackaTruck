//
//  UploadPersonagem2.swift
//  RPG Manager
//
//  Created by Student06 on 22/09/23.
//

import SwiftUI

struct UploadPersonagem2: View {
    @State var nome:String
    @State var raca:String
    @State var classe:String
    @State var idade:String
    @State var player:String
    @State var url:String
    @State var desc:String
    @State var sistem:String = ""
    @State var cha:String = "0"
    @State var int:String = "0"
    @State var str:String = "0"
    @State var dex:String = "0"
    @State var wis:String = "0"
    @State var const:String = "0"
    var body: some View {
        ZStack{
            Image("BG")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.87)
            VStack(spacing: 15){
                Image("Novo")
                    .resizable()
                    .frame(width: 270,height: 80)
             //   Spacer()
                
                ZStack{
                    Image("bground")
                        .resizable()
                        .frame(width: 340,height: 420)
                        .cornerRadius(10)
                        .padding(.leading,-5)
                    VStack(spacing: 5){
                        HStack{
                            Text("Sistema:")
                            
                            TextField("Insira aqui",text:$sistem)
                            
                            
                        }//hstack
                        .padding()
                        
                        Divider()
                        .overlay(.black)
                        .frame(width: 340,height: 2)
                        .padding(.top,-15)
                        .padding(.leading,-5)
                        
                        
                        VStack(spacing:-2){
                            HStack{
                                VStack(spacing: 2){
                                    Text("Força")
                                    ZStack{
                                        Image("CharSquare").resizable().frame(width: 110,height: 110)
                                        VStack{
                                            TextEditor(text:$str)
                                                .foregroundColor(.black)
                                                .frame(width: 100,height: 50)
                                                .multilineTextAlignment(.center)
                                                .scrollContentBackground(.hidden)
                                                .opacity(01.0)
                                                .font(.largeTitle)
                                                .fontWeight(.bold)
                                                .multilineTextAlignment(.center)
                                            
                                            
                                        }
                                    }
                                }
                                Spacer()
                                VStack(spacing: 2){
                                    Text("Destreza")
                                    ZStack{
                                        Image("CharSquare").resizable().frame(width: 110,height: 110)
                                        VStack{
                                            TextEditor(text:$dex)
                                                .foregroundColor(.black)
                                                .frame(width: 100,height: 50)
                                                .multilineTextAlignment(.center)
                                                .scrollContentBackground(.hidden)
                                                .opacity(01.0)
                                                .font(.largeTitle)
                                                .fontWeight(.bold)
                                                .multilineTextAlignment(.center)
                                            
                                            
                                        }
                                    }
                                    
                                }
                            }
                            HStack{
                                VStack(spacing: 2){
                                    Text("Constituição")
                                    ZStack{
                                        Image("CharSquare").resizable().frame(width: 110,height: 110)
                                        VStack{
                                            TextEditor(text:$const)
                                                .foregroundColor(.black)
                                                .frame(width: 100,height: 50)
                                                .multilineTextAlignment(.center)
                                                .scrollContentBackground(.hidden)
                                                .opacity(01.0)
                                                .font(.largeTitle)
                                                .fontWeight(.bold)
                                                .multilineTextAlignment(.center)
                                            
                                            
                                        }
                                    }
                                }
                                Spacer()
                                VStack(spacing: 2){
                                    Text("Inteligência")
                                    ZStack{
                                        Image("CharSquare").resizable().frame(width: 110,height: 110)
                                        VStack{
                                            TextEditor(text:$int)
                                                .foregroundColor(.black)
                                                .frame(width: 100,height: 50)
                                                .multilineTextAlignment(.center)
                                                .scrollContentBackground(.hidden)
                                                .opacity(01.0)
                                                .font(.largeTitle)
                                                .fontWeight(.bold)
                                                .multilineTextAlignment(.center)
                                            
                                            
                                        }
                                    }
                                }
                            }
                            HStack{
                                VStack(spacing: 2){
                                    Text("Sabedoria")
                                    ZStack{
                                        Image("CharSquare").resizable().frame(width: 110,height: 110)
                                        VStack{
                                            TextEditor(text:$wis)
                                                .foregroundColor(.black)
                                                .frame(width: 100,height: 50)
                                                .multilineTextAlignment(.center)
                                                .scrollContentBackground(.hidden)
                                                .opacity(01.0)
                                                .font(.largeTitle)
                                                .fontWeight(.bold)
                                                .multilineTextAlignment(.center)
                                            
                                            
                                        }
                                    }
                                }
                                Spacer()
                                VStack(spacing: 2){
                                    Text("Carisma")
                                    ZStack{
                                        Image("CharSquare").resizable().frame(width: 110,height: 110)
                                        VStack{
                                            TextEditor(text:$cha)
                                                .foregroundColor(.black)
                                                .frame(width: 100,height: 50)
                                                .multilineTextAlignment(.center)
                                                .scrollContentBackground(.hidden)
                                                .opacity(01.0)
                                                .font(.largeTitle)
                                                .fontWeight(.bold)
                                                .multilineTextAlignment(.center)
                                            
                                            
                                        }
                                    }
                                }
                            }
                        }.padding(.top,-19)
                         .padding(.bottom,10)// Vstack
                    }//Vstack
                    .frame(width: 330,height: 420)
                    .padding(.top,-10)
                }//Fim 2 Zstack
                NavigationLink{Upload()} label:{
                    ZStack{
                        Rectangle()
                            .frame(width: 200,height: 60)
                            .foregroundColor(.cyan)
                            .cornerRadius(40)
                        Text("Upload")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                    }
                    
                }
                Spacer()
            }//Fim VStack
        }//FIM ZSTACK
    }
}

struct UploadPersonagem2_Previews: PreviewProvider {
    static var previews: some View {
        UploadPersonagem2(nome: "", raca: "", classe: "", idade: "", player: "", url: "", desc: "")
    }
}
