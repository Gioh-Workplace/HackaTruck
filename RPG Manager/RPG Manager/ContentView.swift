//
//  ContentView.swift
//  RPG Manager
//
//  Created by Student06 on 19/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.black.ignoresSafeArea()
                VStack{
                    HStack{
                        Text("AVISO")
                        
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        Image(systemName: "exclamationmark.triangle.fill").resizable().foregroundColor(.yellow).frame(width: 40,height: 40)
                        
                        
                    }//Fim Hstack
                    Text("Albion Online é um MMORPG sandbox em que você escreve sua própria história, em vez de seguir um caminho pré-determinado. Explore um vasto mundo aberto que consiste de 5 ecossistemas únicos. Tudo o que você faz gera um impacto no mundo, já que em Albion, a economia é conduzida pelo jogador. Cada peça de equipamento é construída por jogadores a partir dos recursos obtidos por eles. O equipamento que você usa define quem você é. Ir de cavaleiro para feiticeiro é tão fácil quanto trocar a armadura e a arma, ou uma combinação das duas. Aventure-se no mundo aberto e enfrente os habitantes e as criaturas de Albion. Saia em expedições ou entre em masmorras para enfrentar inimigos ainda mais desafiadores. Enfrente outros jogadores em confrontos do mundo aberto, lute pelo controle de territórios ou cidades inteiras em batalhas táticas em grupo. Relaxe descansando em sua ilha pessoal, onde você pode construir uma casa, cultivar alimentos e criar animais. Junte-se à uma guilda, tudo fica mais divertido quando se trabalha em equipe. Entre hoje mesmo no mundo de Albion, e escreva sua própria história.").foregroundColor(.white)
                    HStack{
                        NavigationLink(destination:{ Home().navigationBarBackButtonHidden(true) }, label:{
                            Text("Agree").tint(.white)
                                .padding(.horizontal, 5)
                                .frame(width: 150,height: 50)
                                .background(.blue)
                                .cornerRadius(20)
                        })
                        
                        Button(){
                            
                        } label:{
                            Text("Disagree" ).tint(.white)
                                .padding(.horizontal, 5)
                                .frame(width: 150,height: 50)
                                .background(.gray)
                                .cornerRadius(20)
                        }//Fim Button
                        
                    }//Fim HStack
                    
                    
                }
                .padding()
                
            }//ZStack
        }//Link
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
