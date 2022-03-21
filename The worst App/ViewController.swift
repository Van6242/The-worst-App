//
//  ViewController.swift
//  The worst App
//
//  Created by  on 3/18/22.
//

import UIKit

class ViewController: UIViewController {
var timer = Timer()
    
  
    @IBOutlet weak var selable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func badbutton(_ sender: Any) {
        seisure()
        selable.text = ("Why are you doing this to yourself")
    }
    func seisure() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(rescedualtimer), userInfo: nil, repeats: true)
        rescedualtimer()
    }

    @objc func rescedualtimer() {
        
        if view.backgroundColor == UIColor.yellow
        {
            view.backgroundColor = UIColor.red
            selable.textColor = UIColor.yellow
        }
        else
        {
            view.backgroundColor = UIColor.yellow
            selable.textColor = UIColor.red
        }
        
    }
    
}

