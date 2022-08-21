//
//  BordaoService.swift
//  bordoes-01
//
//  Created by Icaro Claro on 21/08/22.
//

import Foundation
import SwiftUI

class BordaoService{
    func CompartilharAudio(audio: String) -> [NSURL]{
        let audioFileName = audio
        var filesToShare = [NSURL]()

        if let audioFileURL = Bundle.main.url(forResource: audioFileName, withExtension: "mp3", subdirectory: "audioFiles") {
            print(audioFileURL)
            
            let fileURL = NSURL(fileURLWithPath: audioFileURL.relativePath)

            filesToShare.append(fileURL)
        }
        return filesToShare
    }
}

struct ActivityViewController: UIViewControllerRepresentable {

    var activityItems: [Any]
    var applicationActivities: [UIActivity]? = nil

    func makeUIViewController(context: UIViewControllerRepresentableContext<ActivityViewController>) -> UIActivityViewController {
        let controller = UIActivityViewController(activityItems: activityItems, applicationActivities: applicationActivities)
        return controller
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: UIViewControllerRepresentableContext<ActivityViewController>) {}
}
