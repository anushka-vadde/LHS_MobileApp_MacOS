//
//  ResultsVC.swift
//  PersonalityQuiz2
//
//  Created by Anushka V on 3/17/19.
//  Copyright © 2019 AnushkaV. All rights reserved.
//

import UIKit

class ResultsVC: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultDefinition: UILabel!
    
    var responses: [Answer]!

    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true

        // Do any additional setup after loading the view.
    }
    func calculatePersonalityResult(){
        var frequencyOfAnswers: [AnimalType : Int] = [:]
        
        let responseType = responses.map{ $0.type}
        
        for response in responseType{
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0 ) + 1
            }
        let frequentAnswersSorted = frequencyOfAnswers.sorted{ (pair1, pair2) -> Bool in
             return pair1.value > pair2.value
            
        }
        let mostCommonAnswer = frequencyOfAnswers.sorted{
            $0.1 > $1.1}.first!.key
        
        resultLabel.text = "You are a \(mostCommonAnswer.rawValue)"
        resultDefinition.text = mostCommonAnswer.definition
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
