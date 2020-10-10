//
//  QuestionData.swift
//  PersonalityQuiz2
//
//  Created by Anushka V on 3/17/19.
//  Copyright © 2019 AnushkaV. All rights reserved.
//

import Foundation

struct Question{
    var text:String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType{
    case single, multiple, ranged
}

struct Answer{
    var text:String
    var type: AnimalType
}
enum AnimalType: Character {
      case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog :
            return "You are incredibly outgoing. You surround yourslef with people and enjoy activities with your friends."
        case .cat :
            return "You are michievous, yet mild-tempered, you enjoy doing things on your own terms."
        case .rabbit:
            return "You love everthing that's soft. You are very sweet.You are healthy and full of energy."
        case .turtle:
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race."
        }
    }
}





































