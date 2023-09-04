//
//  Photos.swift
//  Aula 4
//
//  Created by Student06 on 04/09/23.
//

import SwiftUI

struct Photos: View {
    private var imageList = [
        "hare.fill",
        "tortoise.fill",
        "pawprint.fill",
        "ant.fill",
        "ladybug.fill"
    ]
    var body: some View {
        ScrollView{
            VStack{
                ForEach(imageList, id: \.self) { text in
                    Image(systemName:text).resizable().frame(width: 300,height: 250).padding()
                }  //Vstack end
            }
            }//Scrollview end
            // .defaultScrollAnchor(.center)
            
            
        }
    }
    
    struct Photos_Previews: PreviewProvider {
        static var previews: some View {
            Photos()
        }
    }

