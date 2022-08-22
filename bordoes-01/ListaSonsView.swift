//
//  ListaSonsView.swift
//  bordoes-01
//
//  Created by Icaro Claro on 16/08/22.
//

import Foundation
import SwiftUI

struct CardListaSonsView: View{
    @State var audio: String
    @State var descricao: String
    @State var habilitado: Bool
    
    @State private var isSharePresented: Bool = false
    var bordaoService = BordaoService()


    var body: some View{
        HStack{
            Button(action: {playSound(audio: audio)}){
                HStack{
                        Text(descricao)
                            .font(.title2)
                            .bold()
                            .foregroundColor(ButtomColor(habilitado: habilitado))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                    if(habilitado){
                        Image("play2")
                            .frame(alignment: .trailing)
                            .padding()
                    }else{
                        Image("plus")
                            .frame(width: 40, height: 40, alignment: .trailing)
                            .foregroundColor(.white)
                            .padding()
                    }
                }
                .frame(maxWidth: .infinity)
                .background(Color(red: 0.200, green: 0.200, blue: 0.200))
                .cornerRadius(5)
                .shadow(color: .black, radius: 1, x: 1, y: 1)
            }
            Button(action: {
                self.isSharePresented = true
                
            }){
                Image(systemName: "square.and.arrow.up")
                    .resizable(resizingMode: .tile)
                    .frame(width: 25, height: 25, alignment: .trailing)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(red: 0.200, green: 0.200, blue: 0.200))
                    .cornerRadius(5)
                    .shadow(color: .black, radius: 1, x: 1, y: 1)

            }
            .sheet(isPresented: $isSharePresented, onDismiss: {
                print("Dismiss")
            }, content: {
                ActivityViewController(activityItems: bordaoService.CompartilharAudio(audio: audio))
            })
            .buttonStyle(BorderlessButtonStyle())
        }
        .buttonStyle(BorderlessButtonStyle())
        .disabled(!habilitado)
    }
}

struct SoundsView: View{
    @Binding var isPresented: Bool
    @Binding var artista: Artista

    var body: some View{
        VStack(spacing: 0){
            VStack{
                Button(action:{
                    isPresented = false
                }){
                    Text(artista.nome)
                        .bold()
                        .foregroundColor(.black)
                        .font(.title)

                    Image(systemName: "chevron.down")
                        .font(.title2)
                        .foregroundColor(.black)
                        .padding()
                }
                .frame(maxWidth: .infinity)
            }
            .background(Color(red: 1, green: 1, blue: 1, opacity: 0.9 ))
            .frame(maxWidth: .infinity)
            
            List{
                ForEach(artista.bordoes){item in
                    CardListaSonsView(audio: item.audio, descricao: item.descricao, habilitado: item.habilitado)
                }
                .listRowBackground(Color(red: 1, green: 1, blue: 1, opacity: 0))
                .listRowSeparator(.hidden)

            }
            .listStyle(.plain)
        }
        .background(
            Image("fundo01")
                .resizable(resizingMode: .tile)
                .opacity(0.3)
        )
    }
}
