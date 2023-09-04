//
//  Volte.swift
//  Aula 4 ex 2
//
//  Created by Student06 on 04/09/23.
//

import SwiftUI

struct Volte: View {
  //  var user: String
    @State var pUser:String
    var body: some View {
        Text("Volte,\(pUser)")
    }
}

struct Volte_Previews: PreviewProvider {
    static var previews: some View {
        Volte(pUser: "Giovani")
    }
}
