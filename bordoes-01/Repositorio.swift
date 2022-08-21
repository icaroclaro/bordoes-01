//
//  Repositorio.swift
//  bordoes-01
//
//  Created by Icaro Claro on 16/08/22.
//

import Foundation
import SwiftUI

struct Artista: Identifiable{
    var id = UUID()
    var nome: String
    var imagemHome: String
    var imagemDetalhes: String
    var bordoes: [Bordao]
    var instagram: String
    var detalhes: String
}

struct Bordao: Identifiable{
    var id = UUID()
    var descricao: String
    var audio: String
    var habilitado: Bool
}

var bordoesIgor = [
    Bordao(descricao: "Se é pixurucu?", audio: "seehpichuruco", habilitado: true),
    Bordao(descricao: "Oi Psual", audio: "oipsual", habilitado: true),
    Bordao(descricao: "Se é Biruleibe?", audio: "seehbirulaibe", habilitado: true),
    Bordao(descricao: "Checa Pré-Checa?", audio: "seehbirulaibe", habilitado: false),
]
var nomeIgor = "Igor Guimarães"
var imagemHomeIgor = "igor-guimaraes-home"
var imagemDetalhesIgor = "igor-guimaraes-detalhes"
var instagramIgor = "@igorismo"
var detalhesIgor = "Igor Guimarães é comediante stand up desde 2009. Com um estilo diferenciado de contar suas piadas, tiradas rápidas e uma voz bem particular, Igor se destacou logo no início da carreira."

var igorArtista = Artista(nome: nomeIgor, imagemHome: imagemHomeIgor, imagemDetalhes: imagemDetalhesIgor, bordoes: bordoesIgor, instagram: instagramIgor, detalhes: detalhesIgor)


var bordoesNabote = [
    Bordao(descricao: "Se é pixurucu?", audio: "seehpichuruco", habilitado: true),
    Bordao(descricao: "Oi Psual", audio: "oipsual", habilitado: true),
    Bordao(descricao: "Se é Biruleibe?", audio: "seehbirulaibe", habilitado: true),
    Bordao(descricao: "Checa Pré-Checa?", audio: "seehbirulaibe", habilitado: false),
]

var nomeNabote = "Estevam Nabote"
var imagemHomeNabote = "estevam-nabote-home"
var imagemDetalhesNabote = "estevam-nabote-detalhes"
var instagramNabote = "@estevamnabote"
var detalhesNabote = "Ator do Porta dos Fundos e Multshow"

var naboteArtista = Artista(nome: nomeNabote, imagemHome: imagemHomeNabote, imagemDetalhes: imagemDetalhesNabote, bordoes: bordoesNabote, instagram: instagramNabote, detalhes: detalhesNabote)


var bordoesEd = [
    Bordao(descricao: "Silvio 01", audio: "silvio01", habilitado: true),
    Bordao(descricao: "Silvio 02", audio: "silvio02", habilitado: true),
    Bordao(descricao: "Silvio 03", audio: "silvio03", habilitado: true),
    Bordao(descricao: "Silvio 04", audio: "silvio04", habilitado: false),
]

var nomeEd = "Ed Gama"
var imagemHomeEd = "ed-gama-home"
var imagemDetalhesEd = "ed-gama-detalhes"
var instagramEd = "@edgama"
var detalhesEd = "Nascido em Maceió, se formou em Direito e chegou a exercer a profissão, mas após ter sido convidado a fazer um open mic (quando humoristas iniciantes abrem o show de humoristas mais experientes) e ter feito uma abertura de 5 minutos, Ed decidiu que queria ser humorista, sendo que já era elogiado por seu humor quando fazia faculdade."

var edArtista = Artista(nome: nomeEd, imagemHome: imagemHomeEd, imagemDetalhes: imagemDetalhesEd, bordoes: bordoesEd, instagram: instagramEd, detalhes: detalhesEd)




var bordoesDefante = [
    Bordao(descricao: "Defante 01", audio: "defante01", habilitado: true),
    Bordao(descricao: "Defante 02", audio: "defante02", habilitado: true),
    Bordao(descricao: "Defante 03", audio: "defante03", habilitado: true),
    Bordao(descricao: "Defante 04", audio: "defante04", habilitado: false),
]

var nomeDefante = "Diogo Defante"
var imagemHomeDefante = "diogo-defante-home"
var imagemDetalhesDefante = "diogo-defante-detalhes"
var instagramDefante = "@diogodefante"
var detalhesDefante = "Diogo Defante possui um canal que leva o seu nome desde 2012. No Youtube, ultrapassa 800 mil inscritos e contém humor voltado pra comédia com o objetivo de fazer rir. O criador vem do subúrbio carioca e começou a carreira na internet em 2012 com seu primeiro canal, o Kaozada."



var defanteArtista = Artista(nome: nomeDefante, imagemHome: imagemHomeDefante, imagemDetalhes: imagemDetalhesDefante, bordoes: bordoesDefante, instagram: instagramDefante, detalhes: detalhesDefante)

var comediantes: [Artista] = [edArtista, igorArtista, naboteArtista, defanteArtista]
