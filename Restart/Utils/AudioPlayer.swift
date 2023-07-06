//
//  SoundPlayer.swift
//  Restart
//
//  Created by Victor on 06/07/23.
//

import AVFoundation
import Foundation

class AudioPlayer {
    static let shared = AudioPlayer()
    
    private static var player: AVAudioPlayer?
    
    static func playSound(sound: String, type: String) {
        if let path = Bundle.main.path(forResource: sound, ofType: type) {
            do {
                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                player?.play()
            } catch {
                print("Error: \(error.localizedDescription)")
            }
        }
    }

}
