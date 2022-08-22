//
//  HomeView.swift
//  bordoes-01
//
//  Created by Icaro Claro on 16/08/22.
//

import Foundation
import SwiftUI

struct HomeView: View{
    var body: some View{
        VStack(spacing: 0){
            HStack{
                Text("Artistas")
                    .bold()
                    .foregroundColor(.black)
                    .font(.title)
            }
            .frame(maxWidth: .infinity)
            .background(.white)
    
            List{
                ForEach(comediantes){item in
                    CardListaComediantes(artista: item)
                }
                .listRowBackground(Color(red: 1, green: 1, blue: 1, opacity: 0))
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
        }
    }
}

struct CardListaComediantes: View{
//    @State var nome: String
//    @State var imagem: String
    @State var artista: Artista
    @State var showingDetail = false
    @State var showingSounds = false

    var body: some View{
        HStack{
            Button(action:{
                self.showingSounds.toggle()
            }){
                VStack{
                    Image(artista.imagemHome)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        //.background(Color.yellow)
                    Text("Bordoes do")
                        .font(.caption2)
                        .foregroundColor(.white)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        //.background(Color.gray)
                    Text(artista.nome)
                        .font(.title3)
                        .foregroundColor(Color(red: 0.698, green: 0.957, blue: 0.22, opacity: 1.0))
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        //.background(Color.black)
                }
            }
            .buttonStyle(BorderlessButtonStyle())
            .fullScreenCover(isPresented: $showingSounds, content: {
                SoundsView(isPresented: $showingSounds, artista: $artista)
            })
            
            HStack{
                Button(action:{
                    self.showingDetail.toggle()
                }){
                    Image("3dots2")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                .buttonStyle(BorderlessButtonStyle())
                .sheet(isPresented: $showingDetail, content: {
                    DetailsView(isPresented: $showingDetail, artista: artista)
                })
                //.background(Color.brown)
            }
            .padding(.trailing, 10)
            .frame(minHeight: 70, alignment: .topTrailing)
        }
        //.background(Color.red)
        .padding()
        .background(Color(red: 0.200, green: 0.200, blue: 0.200))
        .cornerRadius(5)
        .shadow(color: Color.black.opacity(0.5), radius: 4, x: 4, y: 4)
    }
}
