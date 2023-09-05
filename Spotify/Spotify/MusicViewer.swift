//
//  MusicViewer.swift
//  Spotify
//
//  Created by Student06 on 05/09/23.
//

import SwiftUI

struct MusicViewer: View {
    let bg = LinearGradient (
    colors: [Color.blue, Color.black],
    startPoint:.top, endPoint: .bottom
    )
    @State var Musica: exibir
    var body: some View {
        ZStack{
            bg.ignoresSafeArea()
            VStack{
                Spacer()
                AsyncImage(url: URL(string:Musica.capa))  { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 300, height: 300)
                
                Text("\(Musica.nome)")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Text("\(Musica.autores)")
                    .font(.subheadline)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
              Spacer()
                HStack(spacing:25){
                    Button{
                    } label:{
                        Image(systemName: "shuffle")
                            .font(Font.system(.title))
                    }
                    Button{
                    } label:{
                        Image(systemName: "backward.end.fill")
                            .font(Font.system(.title))
                    }
                    Button{
                    } label:{
                        Image(systemName: "play.fill")
                            .font(Font.system(.title))
                    }
                    Button{
                    } label:{
                        Image(systemName: "forward.end.fill")
                            .font(Font.system(.title))
                    }
                    Button{
                    } label:{
                        Image(systemName: "repeat")
                            .font(Font.system(.title))
                    }
                    
                }
                
                Spacer()
            }
            
        }
        
    }
}

struct MusicViewer_Previews: PreviewProvider {
    static var previews: some View {
        MusicViewer(Musica: exibir(nome:"Numb        ",autores:"Linkin Park",capa:"https://encurtador.com.br/fghm4"))
    }
}
