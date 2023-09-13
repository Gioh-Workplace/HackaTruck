//
//  ContentView.swift
//  RPGs
//
//  Created by Student06 on 13/09/23.
//

import SwiftUI



struct ContentView: View {
    
    @StateObject var rpg = ViewModelRPG()
    
    var body: some View {
        NavigationStack{
            ZStack{
                Image("BG")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .opacity(0.6)
                
                VStack {
                    Image("RPG")
                        .opacity(0.98)
                    Spacer()
                    ScrollView{
                        
                        
                        ForEach(rpg.personagens, id: \._id) { personagem in
                            ZStack{
                                Rectangle()
                                    .fill(.blue)
                                    .cornerRadius(10)
                                    .frame(width: 250,height: 120)
                                
                                NavigationLink("\(personagem.nome!)"){Personagem(char:personagem)}
                                    .tint(.black)
                                    .font(.largeTitle).foregroundColor(.black).frame(width: 300,height: 120)
                            }
                            
                            
                            
                        }//Fim foreach
                        
                    }//Fim do ScrollView
                    
                    
                }//Fim VStack
                .padding()
            } //Fim ZStack
        }.onAppear(){rpg.fetch()}//Fim NavigationStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
