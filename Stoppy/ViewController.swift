//
//  ViewController.swift
//  Stoppy
//
//  Created by Aditya Verma on 06/11/15.
//  Copyright © 2015 Aditya Verma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    var second = 0
    var minute = 0
    var hour = 0
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var minLabel: UILabel!
    @IBOutlet weak var hourLabel: UILabel!
    
    func timePlus() {
        
        second++
        secondLabel.text = String(second)
        
        if second == 60 {
            minute++
            minLabel.text = String(minute)
            second = 0
            secondLabel.text = "0"
        }
        
        if minute == 60 {
            hour++
            hourLabel.text = String(hour)
            minLabel.text = "0"
            minute = 0
        }
    }
    
    @IBAction func start(sender: UIBarButtonItem) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("timePlus"), userInfo: nil, repeats: true)
        
    }
    @IBAction func pause(sender: UIBarButtonItem) {
        timer.invalidate()
        
    }
    @IBAction func stop(sender: UIBarButtonItem) {
        timer.invalidate()
        second = 0
        minute = 0
        hour = 0
        secondLabel.text = "0"
        minLabel.text = "0"
        hourLabel.text = "0"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

