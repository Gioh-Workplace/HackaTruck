//
//  ContentView.swift
//  Teste3
//
//  Created by Student06 on 31/08/23.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var showAlert: Bool = false
    var body: some View {
        VStack {
            
            
            ZStack{
                
                //    Image("imagem1").opacity(0.35)
                
                VStack{
                    
                    Text("Bem vindo, "+username)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    
                    TextField(
                        "Insira seu nome aqui",
                        text: $username
                        
                    )                    .multilineTextAlignment(.center)
                    Spacer()
                    
                    VStack{
                        Image("imagem2").resizable().scaledToFill().frame(width: 100,height: 100)
                        
                        Image("imagem3").resizable().scaledToFill().frame(width: 120,height: 120)
                    }
                    
                    Spacer()
                    
                    Button("Entrar") {
                        showAlert = true
                    }
                    .alert(isPresented: $showAlert) {
                        Alert(
                            title: Text("ALERTA"),
                            message: Text("Você irá iniciar o desafio da aula agora"),
                            dismissButton: .default(Text("Vamos lá!"))
                        )
                        
                        
                        
                        
                    }
                    
                    
                }
                .background(
                    Image("imagem1").resizable()
                        .opacity(0.35)
                        .scaledToFill()
                        
                    
                )
                
                .padding()
            }
        }
    }
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
    }

