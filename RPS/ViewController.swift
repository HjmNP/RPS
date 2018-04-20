//
//  ViewController.swift
//  RPS
//
//  Created by 한지민 on 2018. 4. 20..
//  Copyright © 2018년 HjmNP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cpusign: UILabel!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rockButtonTapped(_ sender: AnyObject) {
        userChoice = 0
        updateResult()
    }
    
    @IBAction func paperButtonTapped(_ sender: AnyObject) {
        userChoice = 1
        updateResult()
    }
    
    @IBAction func scissorButtonTapped(_ sender: AnyObject) {
        userChoice = 2
        updateResult()
    }
    @IBAction func resetTapped(_ sender: AnyObject) {
        rockButton.isEnabled = true
        paperButton.isEnabled = true
        scissorButton.isEnabled = true
        result.text = "Rock, Papers, Scissors?"
        cpusign.text = "🤖"
    }
    
    func Result(_ cpuSign: String) -> GameState {
        if cpuSign == "✋" && userSign().sign == "✋" || cpuSign == "✊" && userSign().sign == "✊" || cpuSign == "✌️" && userSign().sign == "✌️" {
            return GameState.draw
        }
        else if cpuSign == "✊" && userSign().sign == "✋" || cpuSign == "✌️" && userSign().sign == "✊" || cpuSign == "✋" && userSign().sign == "✌️" {
            return GameState.win
        }
        else {
            return GameState.lose
        }
    }
    
    func updateResult(){
        cpusign.text = randomSign().sign
        result.text = Result(cpusign.text!).gameState
        rockButton.isEnabled = false
        paperButton.isEnabled = false
        scissorButton.isEnabled = false
    }
}

