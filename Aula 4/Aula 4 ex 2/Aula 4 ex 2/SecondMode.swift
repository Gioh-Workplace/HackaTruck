//
//  SecondMode.swift
//  Aula 4 ex 2
//
//  Created by Student06 on 04/09/23.
//

import SwiftUI
struct SecondMode: View {
    @State var user:String = ""
    var body: some View {
        
        NavigationView{
        VStack{
            
            TextField("Insira seu nome aqui",text:$user)
        
            Text("Estamos percorrendo um caminho,\(user)")
            
            
            NavigationLink("Acessar Tela"){Volte(pUser: user)}
            }
            
        }
        
        
        
    }

}

struct SecondMode_Previews: PreviewProvider {
    static var previews: some View {
        SecondMode()
    }
}
