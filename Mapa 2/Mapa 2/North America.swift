//
//  North America.swift
//  Mapa 2
//
//  Created by Student06 on 06/09/23.
//

import SwiftUI
import MapKit
struct North_America: View {
    @State var coord: MKCoordinateRegion
    @State var continentes = [
        Continentes(name:"North America",
                    coordinate:geraCordenada(lat: 54, longi: -101,latDelta: 85,longDelta: 85))
    ]
    
    var possiblities = [
    poss(nome:"Argentina",coord:geraCordenada(lat: -34, longi: -64,latDelta: 35,longDelta: 35)),
    poss(nome:"Bolivia",coord:geraCordenada(lat: -17, longi: -65,latDelta: 25,longDelta: 25)),
    poss(nome:"Brazil",coord:geraCordenada(lat: -10, longi: -54,latDelta: 30,longDelta: 30)),
    poss(nome:"Chile",coord:geraCordenada(lat: -30, longi: -71,latDelta: 25,longDelta: 25)),
    poss(nome:"Colombia",coord:geraCordenada(lat: 4, longi: -72,latDelta: 25,longDelta: 25)),
         poss(nome:"Ecuador",coord:geraCordenada(lat: -2, longi: -77.3,latDelta: 15,longDelta: 15)),
    poss(nome:"Guyana",coord:geraCordenada(lat: 6.48, longi: -58,latDelta: 10,longDelta: 10)),
    poss(nome:"Panama",coord:geraCordenada(lat: 9, longi: -80,latDelta: 8,longDelta: 8)),
    poss(nome:"Paraguay",coord:geraCordenada(lat: -23, longi: -58,latDelta: 10,longDelta: 10)),
    poss(nome:"Peru",coord:geraCordenada(lat: -10, longi: -76,latDelta: 20,longDelta: 20)),
    poss(nome:"Suriname",coord:geraCordenada(lat: 4, longi: -56,latDelta: 10,longDelta: 10)),
    poss(nome:"Trinidad and Tobago",coord:geraCordenada(lat: 10.25, longi: -61.20,latDelta: 5,longDelta: 5)),
    poss(nome:"Uruguay",coord:geraCordenada(lat: -33, longi: -56,latDelta: 20,longDelta: 20)),
    poss(nome:"Venezuela",coord:geraCordenada(lat: 10.28, longi: -66.59,latDelta: 20,longDelta: 20)),
    poss(nome:"Argentina",coord:geraCordenada(lat: -34, longi: -64,latDelta: 35,longDelta: 35)),
    poss(nome:"Argentina",coord:geraCordenada(lat: -34, longi: -64,latDelta: 35,longDelta: 35)),
    poss(nome:"Argentina",coord:geraCordenada(lat: -34, longi: -64,latDelta: 35,longDelta: 35)),
    poss(nome:"Argentina",coord:geraCordenada(lat: -34, longi: -64,latDelta: 35,longDelta: 35)),
    poss(nome:"Argentina",coord:geraCordenada(lat: -34, longi: -64,latDelta: 35,longDelta: 35)),
    poss(nome:"Argentina",coord:geraCordenada(lat: -34, longi: -64,latDelta: 35,longDelta: 35)),
    poss(nome:"Argentina",coord:geraCordenada(lat: -34, longi: -64,latDelta: 35,longDelta: 35)),
    poss(nome:"Argentina",coord:geraCordenada(lat: -34, longi: -64,latDelta: 35,longDelta: 35)),
    poss(nome:"Argentina",coord:geraCordenada(lat: -34, longi: -64,latDelta: 35,longDelta: 35))
                     ]
    @State var teste = true
    var body: some View {
        NavigationStack{
            ZStack{
                Color("BG").ignoresSafeArea()
                VStack {
                    Text("World Map")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text("North America")
                    Map(coordinateRegion: $continentes[0].coordinate)
                      //  .disabled(teste)
                        //Fim Map
                    
                    Spacer()
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(possiblities) { possibility in
                                ZStack{ //Criar os retangulos com nome de cada pais
                                    Rectangle()
                                        .fill(.blue)
                                        .frame(width: 80,height: 30)
                                        .cornerRadius(10)
                                    NavigationLink("\(possibility.nome)") { South_America(coord:possibility.coord)} // Redirect pra pagina de zoom
                    
                                    .frame(width: 80,height: 30).tint(.white)
                                }//Fim Stack
                                
                                
                            }//Fim Foreach
                            
                            
                        }//Fim Hstack
                    }//Fim scrollview
                    
                   /* Button("teste"){
                        teste.toggle()
                    }*/
                    
                    
                }//Fim Vstack
                .padding()
            }//Fim Zstack
        }//Fim NavigationStack
    }//Fim body
}//Fim view



struct North_America_Previews: PreviewProvider {
    static var previews: some View {
        North_America(coord:geraCordenada(lat: 54, longi: -101,latDelta: 85,longDelta: 85))
    }
}
