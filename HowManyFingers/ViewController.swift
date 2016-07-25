//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Kyle J Harding on 7/24/16.
//  Copyright © 2016 Kyle J Harding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtGuess: UITextField!
    @IBOutlet weak var lblResult: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func guess(_ sender: AnyObject) {
        let fingers = Int(arc4random_uniform(6))
        let guess = Int(txtGuess.text!)
        if (fingers == guess){
            lblResult.text = "You are correct"
        }else if(guess > 5){
            lblResult.text = "You must guess between 0 and 5"
        }else{
            lblResult.text = "Wrong!  I was holding up \(fingers) "
        }

    }
}


