//
//  Zoom.swift
//  Mapa 2
//
//  Created by Student06 on 06/09/23.
//

import SwiftUI
import MapKit
struct Zoom: View {
     
        @State var coord: MKCoordinateRegion
        var body: some View {
           
            Map(coordinateRegion: $coord)
            
       
    }
}

struct Zoom_Previews: PreviewProvider {
    static var previews: some View {
        Zoom(coord:geraCordenada(lat: -10, longi: -54,latDelta: 30,longDelta: 30))
    }
}
