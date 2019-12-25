//
//  ViewController.swift
//  SimplePasteApp
//
//  Created by Mathusan Selvarajah on 25/12/19.
//  Copyright © 2019 Mathusan Selvarajah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var textView: UITextView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		showText()
	}
	
	var pastedStrings: [String] = []
	
	func addText(){
		// If there is nothing in the pasteboard then we don't want to proceed with this method
		// Can be done with the gaurd type
		
		guard let text = UIPasteboard.general.string, !pastedStrings.contains(text) else {
			return
		}
		pastedStrings.append(text)
		showText()
	}
	
	func showText(){
		textView.text = ""
		for str in pastedStrings {
			textView.text.append("\(str)\n\n")
		}
	}
	
	@IBAction func trashButttonPressed(_ sender: Any) {
		
	}

}

