//
//  Protocols.swift
//
//  Copyright © 2015 c9iim. All rights reserved.
//

import Cocoa

protocol ApplicationProtocol: RunningApplication, Script {
//    init?(bundleIdentifier: String)
//    init?(path: String)
//    init?(name: String)
//    init?(processIdentifier: pid_t)
//    static func currentApplication() -> CurrentApplicationProtocol
}

protocol CurrentApplicationProtocol: RunningApplication, Script, Clipboard, File, Internet, Miscellaneous, Standard, UserInteraction {
}



protocol RunningApplication {
    init()
    func runningApplication() -> NSRunningApplication?
}

protocol Script {
    func activate() -> Bool
    func terminate() -> Bool
}

protocol Clipboard {
}

protocol File {
}

protocol Internet {
}

protocol Miscellaneous {
}

protocol Standard {
}

protocol UserInteraction {
//    func notification(message: String, title: String?, subtitle: String?)
//    func alert(message: String, informative: String) -> NSModalResponse
//    func say(whatToSay: String) -> Int32
//    func afplay(soundFilePath: String) -> Int32
//    func systemSound(name: SystemSoundName)
//    //func beep(num: Int)
//    func beep()
//    func volume() -> [String:Int32]
//    func setVolume(newValue: [String:Int32])
//    func volumeIsMuted() -> Bool
//    func volumeMuted(newValue: Bool)
}


