//
//  ViewController.swift
//  TextToSpeech
//
//  Created by ADG RIT 18 on 30/03/19.
//  Copyright © 2019 ADG RIT 18. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

	
	@IBOutlet weak var button: UIButton!
	@IBOutlet weak var label: UILabel!
	@IBOutlet weak var text: UITextField!
	override func viewDidLoad() {
        super.viewDidLoad()
		print("inside viewDidLoad")
        // Do any additional setup after loading the view, typically from a nib.
    }
	
	@IBAction func text1(_ sender: Any) {
		
	}
	@IBAction func button1(_ sender: Any) {
		speakText(text: "Hello World")
	}
	
    override func viewDidAppear(_ animated: Bool) {
		print("inside viewDidAppear")
	
	}
	func speakText(text: String)	{
		let utterance = AVSpeechUtterance(string: text)
		utterance.rate = 0.3
		utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
		
		let synt = AVSpeechSynthesizer()
		synt.speak(utterance)
	}

}

