//
//  Main.swift
//  Aula 4
//
//  Created by Student06 on 04/09/23.
//

import SwiftUI

struct Main: View {
    var text:String = ""
    var body: some View {
        let items = ListItens()
        let listItems:[String] = items.createList()
        List(listItems, id: \.self) { String in
                    Text(String)
            
            
                }
        
        
        }
    

    
    struct Main_Previews: PreviewProvider {
        static var previews: some View {
            Main()
        }
    }
}
