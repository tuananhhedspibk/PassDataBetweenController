//
//  ViewController.swift
//  PassDataBetweenViewController
//
//  Created by mylaptop on 8/29/18.
//  Copyright © 2018 mylaptop. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CanReceived {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func dataReceived(data: String) {
        label.text = data
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "sendDataForwards", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForwards" {
            // We create the copy of ViewController not origin object
            let secondVC = segue.destination as! SecondViewController
            secondVC.data = textField.text!
            secondVC.delagate = self
        }
    }
    
}

