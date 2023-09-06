//
//  South America Zoom.swift
//  Mapa 2
//
//  Created by Student06 on 06/09/23.
//

import SwiftUI
import MapKit
struct South_America_Zoom: View {
    @State var coord: MKCoordinateRegion
    var body: some View {
       
        Map(coordinateRegion: $coord)
        
        
        
    }//Fim body
}//Fim view

struct South_America_Zoom_Previews: PreviewProvider {
    static var previews: some View {
        South_America_Zoom(coord:geraCordenada(lat: -10, longi: -54,latDelta: 30,longDelta: 30))
    }
}
