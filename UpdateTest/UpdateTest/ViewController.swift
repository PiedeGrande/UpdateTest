//
//  ViewController.swift
//  UpdateTest
//
//  Created by Alex Perathoner on 30/04/2020.
//  Copyright © 2020 Alex Perathoner. All rights reserved.
//

import Cocoa
import AppUpdater

class ViewController: NSViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		

		// Do any additional setup after loading the view.
	}
	let updater = AppUpdater(owner: "AlexPerathoner", repo: "UpdateTest")
	
	@IBAction func check(_ sender: Any) {
		
		updater.check().catch(policy: .allErrors) { error in
            if error.isCancelled {
                // promise is cancelled if we are already up-to-date
            } else {
                // show alert for this error
            }
        }
	}
	

	override var representedObject: Any? {
		didSet {
		// Update the view, if already loaded.
		}
	}


}

