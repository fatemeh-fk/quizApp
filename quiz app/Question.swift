//
//  Question.swift
//  quiz app
//
//  Created by Fateme Karimi on 2021-08-25.
//

import Foundation
 
struct Question {
    let text : String
    let answer : String
    init(q:String ,a :String) {
        text = q
        answer = a
    }
}
let quiz=[
    Question(q: "To get your vehicle out of a skid, you should first teer straight ahead.", a: "True"),
    
    Question(q: "you lend your driver’s licence ,To a person learning to drive.", a: "False"),
    Question(q: "a driver do before entering a highway from a private road or driveway,Enter or cross the highway as quickly as possible.", a: "True"),
    
    Question(q: "Never change lanes in traffic without Looking in the rear view mirror only.", a: "False"),
    Question(q:" the driver of another vehicle is about to overtake and pass your vehicle, you must Speed up so that passing is not necessary.", a: "True"),
    
    Question(q:" you are deciding whether or not to make a U-turn, your first consideration should be to check Traffic regulations.", a: "True"),
    Question(q:" It is more dangerous to drive at the maximum speed limit at night than during daytime as  Your reaction time is slower at night.", a: "True"),
    Question(q:"  You should under all conditions drive at a speed which will allow you to", a: "True")
    
    
   
]
