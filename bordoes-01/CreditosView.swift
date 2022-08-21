//
//  CreditosView.swift
//  bordoes-01
//
//  Created by Icaro Claro on 16/08/22.
//

import Foundation
import SwiftUI




func getDocumentsDirectory() -> NSString {
    let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
    let documentsDirectory = paths[0]
    return documentsDirectory as NSString
}

struct MeusCreditosView: View{
    var body: some View{

            VStack{
                HeaderPacoteCreditoView(carteira: Carteira())
                ScrollView{
                    Text("Meus Pacotes")
                        .bold()
                        //.foregroundColor(.white)
                        .font(.title2)
                        
                    VStack{
                        PacoteCreditoView(imageRisada: "risada1", titulo: "Pacote de crédito I", custo: "R$ 10,00", imageMoeda: "moeda1")
                        PacoteCreditoView(imageRisada: "risada2", titulo: "Pacote de crédito II", custo: "R$ 30,00", imageMoeda: "moeda2")
                        PacoteCreditoView(imageRisada: "risada3", titulo: "Pacote de crédito III", custo: "R$ 50,00", imageMoeda: "moeda3")
                   }
                    .padding(.trailing)
                    .padding(.leading)
                }
            }
            .frame(maxHeight: .infinity, alignment: .top)
        
        /*
        VStack{
            Text("Moedas: \(carteira.total)")
            Button(action:{
                carteira.somaCompra(10)
            }){
                Text("Comprar 10 moedas" )
            }
            Button(action:{
                carteira.somaCompra(20)
            }){
                Text("Comprar 20 moedas" )
            }
        }
          */
    }
}
struct HeaderPacoteCreditoView: View{
    @ObservedObject var carteira: Carteira

    var body: some View{
        HStack{
            Text("Créditos")
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity)
        .background(.black)
        HStack{
            Image("moedas-de-dolar")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .padding(.top)
            Text("\(carteira.total)")
                .bold()
                .frame(maxHeight: .infinity, alignment: .bottomTrailing)
                .padding(.trailing)
                .font(Font.title)
                .foregroundColor(.black)
        }
        .background(Color.white.opacity(1))
        .cornerRadius(5)
        .padding(15)
        .shadow(color: .black, radius: 2, x: 2, y: 2)
        .frame(maxHeight: 100)
    }
}

struct PacoteCreditoView: View{
    var imageRisada: String
    var titulo: String
    var custo: String
    var imageMoeda: String
    
    var body: some View{

        HStack{
            VStack{
                Image(imageRisada)
                    .padding(30)
//                    .background(RoundedCorners(color: .black, tl: 20, tr: 0, bl: 20, br: 0))
  //                  .border(Color(red: 0.698, green: 0.957, blue: 0.22, opacity: 1.0))
            }
            VStack{
                Text(titulo)
                    .bold()
                    .padding(.leading)
                    .padding(.top)
                    .font(.title3)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color(red: 0.698, green: 0.957, blue: 0.22, opacity: 1.0))
                    
                Text(custo)
                    .bold()
                    .padding(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.white)
                Image(imageMoeda)
                    .padding(.bottom)
                    .padding(.trailing)
                    .frame(maxWidth: .infinity, alignment: .bottomTrailing)
            }
        }
        .background(Color(red: 0.200, green: 0.200, blue: 0.200))

        .cornerRadius(20)

    }
}
