//
//  DetailView.swift
//  bordoes-01
//
//  Created by Icaro Claro on 16/08/22.
//

import Foundation
import SwiftUI

struct DetailsView: View{
    @Binding var isPresented: Bool
    @State var artista: Artista

    var body: some View{
        VStack{
            chevronDownButtom(isPresented: $isPresented)

            VStack{
                HStack{
                    Image(artista.imagemDetalhes)
                        .padding()
                    VStack(alignment: .leading){
                        Text(artista.nome)
                            .foregroundColor(Color(red: 0.698, green: 0.957, blue: 0.22, opacity: 1.0))
                            .font(.title2)
                            .bold()
                        Text(artista.instagram)
                            //.foregroundColor(.white)
                            .font(.title3)
                            .bold()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                HStack{
                    Text(artista.detalhes)
                        //.foregroundColor(.white)
                        .font(.headline)
                }
            }
            .frame(alignment: .leading)
            .padding(30)
            .frame(maxHeight: .infinity, alignment: .topLeading)
        }
        .background(
            Image("fundo01")
                .resizable(resizingMode: .tile)
                .opacity(0.05)
        )
        //.background(.black)
    }
}
