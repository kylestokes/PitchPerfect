//
//  RecordSoundsViewController+Audio.swift
//  Pitch Perfect
//
//  Created by Kyle Stokes on 1/18/18.
//  Copyright © 2018 Kyle Stokes. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation

extension RecordSoundsViewController: AVAudioRecorderDelegate {
    // function runs automatically after AVAudioRecorder finishes recording
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        if flag {
            performSegue(withIdentifier: "stopRecording", sender: audioRecorder.url)
        } else {
            let alert = UIAlertController(title: "Recording Unsuccessful", message: "Your recording was unsuccessful. 😕", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .`default`, handler: { _ in
                NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
        }
    }
}
