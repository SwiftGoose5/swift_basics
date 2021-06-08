//
//  ViewController.swift
//  Timer
//
//  Created by Goose on 5/4/21.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var first: NSTextField!
    @IBOutlet weak var second: NSTextField!
    @IBOutlet weak var third: NSTextField!
    @IBOutlet weak var fourth: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        var _ = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(changeLabels), userInfo: nil, repeats: true)
        
        var count = 0
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] timer in
            if count >= 99 { timer.invalidate() }
            
            self?.first.stringValue  = String(Int.random(in: 0...9))
            self?.second.stringValue = String(Int.random(in: 0...9))
            self?.third.stringValue  = String(Int.random(in: 0...9))
            self?.fourth.stringValue = String(Int.random(in: 0...9))
            
            count += 1
            
            Printer.printThis()
        }

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @objc func changeLabels() {
        first.stringValue  = String(Int.random(in: 0...9))
        second.stringValue = String(Int.random(in: 0...9))
        third.stringValue  = String(Int.random(in: 0...9))
        fourth.stringValue = String(Int.random(in: 0...9))
    }


}

class Printer {
    static func printThis() {
        print("Time to choose Mr. Freeman")
    }
}

