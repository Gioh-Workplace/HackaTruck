//
//  ViewModel.swift
//  RPGs
//
//  Created by Student06 on 13/09/23.
//

import Foundation

struct RPG: Codable, Hashable {
    
    let _id: String?
    let _rev:String?
    let nome : String?
    let jogador: String?
    let raca : String?
    let classe : String?
    let idade : String?
    let sistema: String?
    let desc: String?
    let img:String?
    let str:Int?
    let dex:Int?
    let const:Int?
    let int:Int?
    let wis:Int?
    let cha:Int?
    
}

class ViewModelRPG : ObservableObject {
    @Published var personagens : [RPG] = []
    
    func fetch(){
        guard let url = URL(string: "http://192.168.128.254:1880/RPGData" ) else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
                guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([RPG].self, from: data)
                
                DispatchQueue.main.async {
                    self?.personagens = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
}
class ViewModelRPGPOST : ObservableObject {
    @Published var personagens : [RPG] = []
    
    func fetch(){
        guard let url = URL(string: "http://192.168.128.254:1880/RPGPost" ) else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
                guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([RPG].self, from: data)
                
                DispatchQueue.main.async {
                    self?.personagens = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
}
