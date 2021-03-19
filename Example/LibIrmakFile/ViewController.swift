//
//  ViewController.swift
//  LibIrmakFile
//
//  Created by 10302731 on 03/18/2021.
//  Copyright (c) 2021 10302731. All rights reserved.
//

import UIKit
import LibIrmakFile

class ViewController: UIViewController {

    let logger = Logger()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let logger = Logger()
        logger.printLog()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func go(_ sender: UIButton){
        logger.downloadUSDZFile(finished: {})
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

