//
//  ContentView.swift
//  bordoes-01
//
//  Created by Icaro Claro on 08/08/22.
//

import SwiftUI
import AVFoundation

struct MainView: View {
    init(){
        UITableView.appearance().backgroundColor = .clear
        //UITabBar.appearance().barTintColor = .white

    }
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                        .resizable()
                        .frame(width: 100, height: 100)
                }
                .background(
                    Image("background-2")
                        .resizable(resizingMode: .tile)
                        .opacity(1)
                )
            MeusCreditosView()
                .tabItem {
                    Image(systemName: "bag")
                }
                .background(
                    Image("background-4")
                        .resizable(resizingMode: .tile)
                        .opacity(0.2)
                )
        }
        .accentColor(Color(red: 0.698, green: 0.957, blue: 0.22, opacity: 1.0))
        .background(.black)
        .font(.title)
    }
}


struct chevronDownButtom: View{
    @Binding var isPresented: Bool
    var body: some View{
        HStack{
            Button(action:{
                isPresented = false
            }){
                Image(systemName: "chevron.down")
                    .font(.title)
                    .padding()
            }
            .frame(maxWidth: .infinity)
        }
    }
}

func ButtomColor(habilitado: Bool) -> Color{
    return habilitado ? .white : .gray
}

class Carteira: ObservableObject{
    @Published var total: Int = 0
    func somaCompra(_ total: Int){
        self.total += total
    }
}

struct ContentView_Previews: PreviewProvider {
    @State static var isPresented: Bool = true
    static var previews: some View {
        DetailsView(isPresented: $isPresented, artista: igorArtista)
    }
}



var player2: AVPlayer?
var player: AVAudioPlayer?

func playSound(audio: String) {
    guard let url = Bundle.main.url(forResource: audio, withExtension: "mp3") else { return }
    do {
        try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
        try AVAudioSession.sharedInstance().setActive(true)

        /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

        /* iOS 10 and earlier require the following line:
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */

        guard let player = player else { return }

        player.play()

    } catch let error {
        print(error.localizedDescription)
    }
}

struct RoundedCorners: View {

    var color: Color = .white

    var tl: CGFloat = 0.0
    var tr: CGFloat = 0.0
    var bl: CGFloat = 0.0
    var br: CGFloat = 0.0

    var body: some View {
        GeometryReader { geometry in
            Path { path in

                let w = geometry.size.width
                let h = geometry.size.height

                // Make sure we do not exceed the size of the rectangle
                let tr = min(min(self.tr, h/2), w/2)
                let tl = min(min(self.tl, h/2), w/2)
                let bl = min(min(self.bl, h/2), w/2)
                let br = min(min(self.br, h/2), w/2)

                path.move(to: CGPoint(x: w / 2.0, y: 0))
                path.addLine(to: CGPoint(x: w - tr, y: 0))
                path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
                path.addLine(to: CGPoint(x: w, y: h - br))
                path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
                path.addLine(to: CGPoint(x: bl, y: h))
                path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                path.addLine(to: CGPoint(x: 0, y: tl))
                path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
            }
            .fill(self.color)
        }
    }
}
