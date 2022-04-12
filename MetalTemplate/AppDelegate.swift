//
//  AppDelegate.swift
//  MetalTemplate
//
//  Created by クワシマ・ユウキ on 2022/04/07.
//

import Cocoa
import Metal

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    public let device = MTLCreateSystemDefaultDevice()!
    public lazy var library: MTLLibrary = {
        return self.device.makeDefaultLibrary()!
    }()
    public lazy var commandQueue: MTLCommandQueue = {
        return self.device.makeCommandQueue()!
    }()
    
    func applicationWillFinishLaunching(_ notification: Notification) {
        print("bbb")
    }


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        print("ccc")
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

