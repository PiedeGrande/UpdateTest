//
//  AppDelegate.swift
//  UpdateTest
//
//  Created by Alex Perathoner on 30/04/2020.
//  Copyright © 2020 Alex Perathoner. All rights reserved.
//

import Cocoa
import Sparkle


@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



	func applicationDidFinishLaunching(_ aNotification: Notification) {
		// Insert code here to initialize your application
	}
	
	@IBAction func checkForUpdates(_ sender: Any) {
        let updater = SUUpdater.shared()
        updater?.feedURL = URL(string: "https://piedegrande.github.io/UpdateTest/appcast.xml")
        updater?.checkForUpdates(self)
    }
	
	func applicationWillTerminate(_ aNotification: Notification) {
		// Insert code here to tear down your application
	}


}

