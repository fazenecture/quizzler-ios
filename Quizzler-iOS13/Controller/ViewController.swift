//
//  ViewControl
import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
 

    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    @IBAction func trueButton(_ sender: UIButton) {
        
        

        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)

        
        if userGotItRight {
            print("Sahi Jawabs")
            trueButton.backgroundColor = UIColor.green
        }else{
            print("koi baat nhi")
        }
        

        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }

    @IBAction func falseButton(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            print("Falat Jaba")
            falseButton.backgroundColor = UIColor.red
        }else{
            print("koi baat nhi")
        }
        
        if questionNumber + 1 < questionArray.count {
            questionNumber += 1
        }else{
            print("End of quiz")
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI(){
        
        progressBar.progress = quizBrain.progressBar()
        questionLabel.text = quizBrain.getQuestionText()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
    
    

}

