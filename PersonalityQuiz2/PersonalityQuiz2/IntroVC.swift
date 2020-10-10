//
//  IntroVC.swift
//  PersonalityQuiz2
//
//  Created by Anushka V on 3/17/19.
//  Copyright © 2019 AnushkaV. All rights reserved.
//

import UIKit

class IntroVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func startQuizPressed(_ sender: Any) {
        performSegue(withIdentifier: "startQuiz", sender: nil)
    }
    @IBAction func unwindToIntroVC(segue: UIStoryboardSegue) {}
    
}

