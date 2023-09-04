//
//  ContentView.swift
//  CalculadoraIMC
//
//  Created by Student06 on 01/09/23.
//

import SwiftUI

struct ContentView: View {
    @State var imc: Double = 0
    @State var peso: Double = 0
    //@State var pesos : String = ""
    @State var h: Double = 0
    //@State var doMath: Bool = false
    func doMath(peso:Double,h:Double)->Double{
        return peso/(h*h)
    }
    let formatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            return formatter
        }()
    
    
    var body: some View {
        ZStack{
            if(imc<18.5&&imc>0){
                Color("Baixo peso").ignoresSafeArea()
            }
            else if(imc>=18.5&&imc<25){
                Color("Normal").ignoresSafeArea()
                
            }
            
            else if(imc>=25&&imc<30){
                Color("Sobrepeso").ignoresSafeArea()
                
            }
            else if(imc>30){
                Color("Obesidade").ignoresSafeArea()
                
            }
            else {
                Color("BG").ignoresSafeArea()
            }
            
            VStack {
                
                
                Text("Calculadora de IMC")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
                
                TextField("Insira seu peso aqui",
                          value:$peso, formatter: formatter
                )
                .multilineTextAlignment(.center).frame(width: 400,height: 40).background(Color.white).padding(.horizontal, 10.0)
                .cornerRadius(10)
                .padding(.top, -80.0)
                
                
                Spacer()
                
                TextField("Insira sua altura aqui",
                          value:$h, formatter: formatter
                )
                .multilineTextAlignment(.center).frame(width: 400,height: 40).background(Color.white).padding(.horizontal, 10.0)
                .cornerRadius(10)
                .padding(.top,-120.0)
                
                Spacer()
                ZStack{
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 180,height: 50)
                        .cornerRadius(10)
                    
                    Button("Calcular") {
                        imc = doMath(peso:peso,h:h)
                    }.frame(width: 180,height: 50).tint(.white)

                    
                }.padding(.top,-180.0) //Fim Zstack botao
                
                Spacer()
                
                
                if(imc<18.5&&imc>0){
                    Text("Baixo peso")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top,-150.0)
                }
                else if(imc>=18.5&&imc<25){
                    Text("Normal")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top,-150)
                    
                }
                
                else if(imc>=25&&imc<30){
                    Text("Sobrepeso")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top,-150)
                }
                else if(imc>30){
                    Text("Obesidade")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top,-150)
                }
                else if(imc==0){
                    Text("")
                }
                
    
                Image("imagem4")
                    .resizable().scaledToFit()
                
                
                
            } //Fim do VStack
            
            
            .padding()
        }//Fim do ZStack
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
