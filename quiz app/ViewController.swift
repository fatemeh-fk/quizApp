//
//  ViewController.swift
//  quiz app
//
//  Created by Fateme Karimi on 2021-08-24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tureBtn: UIButton!
    
    @IBOutlet weak var falseBtn: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var quesionLabel: UILabel!
   
    
//    let quiz=[
//        Question(text:"four+two is 6", answer:"True"),
//        Question(text:"four+10 is 10", answer:"False"),
//        Question(text:"four+two is 6", answer:"True"),
//        Question(text:"four+two is 6", answer:"True"),
//        Question(text:"four-two is 2", answer:"True"),
//        Question(text:"four+two is 6", answer:"True"),
//       
//    ]
    
    var questionNumber=0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        updateQuestion()
    }

    @IBAction func ActionBtn(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
       
        //let actualAnswr = quiz[questionNumber][1]
        let actualAnswr = quiz[questionNumber].answer
        
        if userAnswer == actualAnswr{
            sender.backgroundColor = UIColor.green
           
            
        }
        else{
            sender.backgroundColor = UIColor.red
        }
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        }
        else {
            questionNumber = 0
        }
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector:#selector(updateQuestion),userInfo:nil, repeats: false)
        //questionNumber += 1
        //updateQuestion()
    }
    
    @objc func updateQuestion(){
        quesionLabel.text=quiz[questionNumber].text
        tureBtn.backgroundColor = UIColor.clear
        falseBtn.backgroundColor = UIColor.clear
        progressBar.progress=Float(questionNumber + 1)/Float(quiz.count)    }
    
}

