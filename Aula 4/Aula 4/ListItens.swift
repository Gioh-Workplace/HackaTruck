//
//  ListItens.swift
//  Aula 4
//
//  Created by Student06 on 04/09/23.
//

import Foundation
class ListItens : Identifiable{
    public var listItens:[String] = []
    
    func createList() -> [String]{
        listItens = ["Item 1","Item 2","Item 3","Item 4","Item 5","Item 6","Item 7","Item 8","Item 9","Item 10","Item 11","Item 12","Item 13","Item 14","Item 15","Item 16","Item 17","Item 18","Item 19","Item 20",]
        return listItens
    }
    func ListItens(){
        listItens = createList()
    }
    
}
