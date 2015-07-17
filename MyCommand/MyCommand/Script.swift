//
//  Script.swift
//
//  Copyright © 2015 c9iim. All rights reserved.
//

import Cocoa

extension Application {
    
    func activate() -> Bool {
        return runningApplication()?.activateWithOptions(NSApplicationActivationOptions.ActivateIgnoringOtherApps) ?? false
    }
    
    func terminate() -> Bool {
        return runningApplication()?.terminate() ?? false
    }
    
}

extension CurrentApplication {
    
    func activate() -> Bool {
        return false
    }
    
    func terminate() -> Bool {
        return false
    }
    
}
