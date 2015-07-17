//
//  CurrentApplication.swift
//
//  Copyright © 2015 c9iim. All rights reserved.
//

import Cocoa

struct CurrentApplication: CurrentApplicationProtocol {
    
    private var _runningApplication : NSRunningApplication?
    
    //
    
    init() {
        _runningApplication = NSRunningApplication.currentApplication()
    }
    
    func runningApplication() -> NSRunningApplication? {
        return self._runningApplication
    }
    
}