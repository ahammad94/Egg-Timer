//
//  ViewController.swift
//  Egg Timer
//
//  Created by Abdelrahman Hammad on 4/15/17.
//  Copyright © 2017 Abdelrahman Hammad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    var timer = Timer()
    var time = 210
    
    func decreaseTimer() {
        if time > 0{
            time -= 1
            timerLabel.text = String(time)
        }else{
            timer.invalidate()
        }
    }
    
    @IBOutlet weak var timerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playPressed(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    }
    @IBAction func pausePressed(_ sender: Any) {
        timer.invalidate()
    }
    @IBAction func forwardPressed(_ sender: Any) {
        time += 10
        timerLabel.text = String(time)
    }
    @IBAction func resetPressed(_ sender: Any) {
        time = 210
        timerLabel.text = String(time)
    }
    @IBAction func backwardPressed(_ sender: Any) {
        if time > 10 {
            time -= 10
        }
        timerLabel.text = String(time)
    }
   
}

