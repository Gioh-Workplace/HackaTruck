//
//  ContentView.swift
//  Spotify
//
//  Created by Student06 on 05/09/23.
//

import SwiftUI
struct exibir : Identifiable{
    var id = UUID()
    var nome:String
    var autores:String
    var capa:String
    var ident:Int = 0
}
func aumentarCount(@State count: Int) -> Int{
    var teste:Int
   teste = count + 1
    return teste
}

    

struct ContentView: View {
    let bg = LinearGradient (
    colors: [Color.blue, Color.black],
    startPoint:.top, endPoint: .bottom
    )
    @State var count:Int = 1;
    
    
    var arrayMusicas = [
        exibir(nome:"Numb        ",autores:"Linkin Park",capa:"https://encurtador.com.br/fghm4"),
        exibir(nome:"Love me,Love me,Love me",autores:"Nerissa Ravencraft,Hololive",capa:"https://encurtador.com.br/eoBK2"),
        exibir(nome:"7 weeks & 3 days",autores:"Yungatita \t\t\t",capa:"https://encurtador.com.br/GWZ36"),
        exibir(nome:"teste 4",autores:"teste 4",capa:"https://encurtador.com.br/fluVY"),
        exibir(nome:"teste 5",autores:"teste 5",capa:"https://encurtador.com.br/fluVY"),
        exibir(nome:"teste 6",autores:"teste 6",capa:"https://encurtador.com.br/fluVY"),
        exibir(nome:"teste 7",autores:"teste 7",capa:"https://encurtador.com.br/fluVY"),
        exibir(nome:"teste 7",autores:"teste 7",capa:"https://encurtador.com.br/fluVY"),
        exibir(nome:"teste 9",autores:"teste 9",capa:"https://encurtador.com.br/fluVY"),
        exibir(nome:"teste 10",autores:"teste 10",capa:"https://encurtador.com.br/fluVY")
    ]
    
    
    var body: some View {
        NavigationStack{
            ZStack{
                bg.ignoresSafeArea()
                VStack{
                    ScrollView {
                        VStack {
                            Image("Icon 1")
                                .resizable()
                                .frame(width: 230,height: 230)
                            //   Spacer()
                            
                            Text("HackaFM")
                                .font(.largeTitle)
                                .fontWeight(.medium)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.leading)
                                .padding(.leading, -180.0)
                            
                            
                            Divider()
                                .overlay(.white)
                            
                            
                            ForEach(arrayMusicas) { Musica in
                                
                                HStack(){
                                    AsyncImage(url: URL(string:Musica.capa))  { image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 70, height: 70)
                                    
                                    VStack(spacing:10){
                                        
                                        NavigationLink("\(Musica.nome)") { MusicViewer(Musica: Musica) }
                                            .font(.callout)
                                            .fontWeight(.heavy)
                                            .foregroundColor(Color.white)
                                            .truncationMode(.tail)
                                        Text(Musica.autores)
                                            .font(.subheadline)
                                            .fontWeight(.medium)
                                            .foregroundColor(Color.white)
                                            .truncationMode(.tail)
                                        
                                    }
                                }.frame(width:370,height: 70, alignment:.leading)//Fim Hstack
                                
                                
                            }//Fim for each
                            
                            
                            VStack{
                                Text("Sugestões")
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.leading)
                                    .padding(.leading,-180)
                                Divider().overlay(.white)
                                
                                ScrollView(.horizontal){
                                    
                                    VStack{
                                        HStack(spacing:15){
                                            
                                            ForEach(arrayMusicas) { Musica in
                                                VStack{
                                                    AsyncImage(url: URL(string:Musica.capa))  { image in
                                                        image.resizable()
                                                    } placeholder: {
                                                        ProgressView()
                                                    }
                                                    .frame(width: 250, height: 250)
                                                    
                                                    Text("\(Musica.nome)")
                                                        .font(.title)
                                                        .fontWeight(.medium)
                                                        .foregroundColor(Color.white)
                                                        .frame(width: 200,height: 50,alignment: .center)
                                                    
                                                }
                                            }//Fim for each
                                        }//Fim Hstack
                                        
                                        
                                    }
                                    
                                }//Fim ScrollView
                            }//Fim Vstack
                            
                            
                        }//Fim Vstack
                        
                        .padding()
                    } //ScrollView
                    
                    
                }//Fim Vstack
                
                
            }
        }//Zstack
    }//Navigation
       
    }//View

    



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
