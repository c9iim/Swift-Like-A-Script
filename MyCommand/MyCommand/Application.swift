//
//  Application.swift
//
//  Copyright © 2015 c9iim. All rights reserved.
//

import Cocoa

struct Application: ApplicationProtocol {
    
    private var _runningApplication : NSRunningApplication?
    
    //
    
    init() {
        _runningApplication = NSRunningApplication.currentApplication()
    }
    
    func runningApplication() -> NSRunningApplication? {
        return self._runningApplication
    }
    
}



