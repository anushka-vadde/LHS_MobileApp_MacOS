//
//  FirstViewController.swift
//  Life Cycle
//
//  Created by Anushka V on 2/20/19.
//  Copyright © 2019 AnushkaV. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("FirstViewController - View Did Load")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("FirstViewController - View Will Appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("FirstViewController = View Did Appear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("FirstViewController = View Will Disappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print("FirstViewController = View Did Disappear")
    }
}

