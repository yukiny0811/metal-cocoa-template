//
//  ViewController.swift
//  MetalTemplate
//
//  Created by クワシマ・ユウキ on 2022/04/07.
//

import Cocoa
import MetalKit

class ViewController: NSViewController {
    
    var mainRenderer: YuruAbstractRenderer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("aaa")
        
        mainRenderer = YuruMainRenderer(functionName: "test", width: 512, height: 512)

        let metalView = MTKView(frame: NSRect(x: 0, y: 0, width: 512, height: 512), device: (NSApplication.shared.delegate as! AppDelegate).device)
        metalView.colorPixelFormat = .bgra8Unorm
        metalView.framebufferOnly = false
        metalView.drawableSize = metalView.frame.size
        metalView.delegate = mainRenderer as! MTKViewDelegate
        self.view.addSubview(metalView)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

