//
//  ViewController.swift
//  PassDataBetweenViewController
//
//  Created by mylaptop on 8/29/18.
//  Copyright © 2018 mylaptop. All rights reserved.
//

import UIKit

protocol CanReceived {
    func dataReceived(data : String)
}

class SecondViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    var data = ""
    var delagate : CanReceived?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        label.text = data
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendDataBack(_ sender: Any) {
        delagate?.dataReceived(data: textField.text!)
        self.dismiss(animated: true, completion: nil)
    }
}
