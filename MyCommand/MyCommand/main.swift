//
//  main.swift
//
//  Copyright © 2015 c9iim. All rights reserved.
//

import Cocoa

// for user interaction.
extension NSBundle {
    func extBundleIdentifier() -> NSString? {
        if (self == NSBundle.mainBundle()) {
            return myBundleIdentifier
        } else {
            return self.extBundleIdentifier()
        }
    }
}

class AppDelegate: NSObject, NSApplicationDelegate, NSUserNotificationCenterDelegate {
    func applicationDidFinishLaunching(notification: NSNotification) {
        // for user interaction.
        if let NSBundleClass : AnyClass = NSBundle.self {
            method_exchangeImplementations(
                class_getInstanceMethod(NSBundleClass, Selector("bundleIdentifier")),
                class_getInstanceMethod(NSBundleClass, Selector("extBundleIdentifier")))
        }
        //
        run()
        //
        NSRunningApplication.currentApplication().terminate()
    }
    func applicationWillTerminate(notification: NSNotification) {
        // for user interaction.
        sleep(1)
    }
}

let appDelegate = AppDelegate()
NSApplication.sharedApplication().delegate = appDelegate
NSApplication.sharedApplication().setActivationPolicy(NSApplicationActivationPolicy.Accessory)
NSApplication.sharedApplication().run()
