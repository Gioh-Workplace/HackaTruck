//
//  ContentView.swift
//  Mapa
//
//  Created by Student06 on 06/09/23.
//

import SwiftUI
import MapKit

struct Continentes: Identifiable{
    let id = UUID()
    let name:String
    var coordinate: MKCoordinateRegion
        
    }//Fim struct
struct poss :Identifiable {
    let id = UUID()
    let nome:String
    let coord: MKCoordinateRegion
}
func geraCordenada (lat:Double,longi:Double,latDelta:Double,longDelta:Double) -> MKCoordinateRegion {
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D (latitude: lat, longitude: longi),
        span: MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
                         )//Fim MKCordinateRegion
            return region
}//Fim funcao

struct ContentView: View {
   
    var body: some View {
        NavigationStack{
        ZStack{
            Color("BG").ignoresSafeArea()
        
        VStack{
            ZStack{
                Rectangle()
                    .fill(.blue)
                    .frame(width: 300,height: 100)
                    .cornerRadius(10)
                
                NavigationLink("South America") { South_America(coord:geraCordenada(lat: -10, longi: -54,latDelta: 35,longDelta: 35)) }
                    .frame(width: 300,height: 100)
                 .foregroundColor(Color.white)
                 
            }//Fim Zstack 2
            ZStack{
                Rectangle()
                    .fill(.blue)
                    .frame(width: 300,height: 100)
                    .cornerRadius(10)
                
                NavigationLink("North America") { North_America(coord:geraCordenada(lat: 54, longi: -101,latDelta: 85,longDelta: 85)) }
                    .frame(width: 300,height: 100)
                 .foregroundColor(Color.white)
                 
            }//Fim Zstack North america
            
        }//Fim vstack
        
        
        
    }//Fim Zstack
}//Fim NavigationStack
    }//Fim body
}//Fim view

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
