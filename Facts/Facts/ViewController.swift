//
//  ViewController.swift
//  8ball
//
//  Created by Whitman Huntley on 2/22/16.
//  Copyright © 2016 HyperChicken Interactive. All rights reserved.
//

import UIKit

extension UIColor {
	convenience init(red: Int, green: Int, blue: Int) {
		assert(red >= 0 && red <= 255, "Invalid red component")
		assert(green >= 0 && green <= 255, "Invalid green component")
		assert(blue >= 0 && blue <= 255, "Invalid blue component")
		
		self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
	}
	
	convenience init(netHex:Int) {
		self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
	}
}

let fail = UIColor(netHex:0xeee8d5)
let fine = UIColor(netHex:0x073642)


let standardAnswers: [String] = ["Yes",
	"No",
	"It is a possibility.",
	"My view has been shaded, ask again.",
	"42.",
	"There's a fair chance.",]

func magicEightBallAnswers(question q: String, lastAnser a: Int) -> (String, Int, Bool) {
	//I'm takin in the last answer to prevent repeats and the question to scan for "love" and "death"
	var answerID: Int
	if q.lowercaseString.rangeOfString("love") != nil || q.lowercaseString.rangeOfString("luv") != nil || q.lowercaseString.rangeOfString("die") != nil || q.lowercaseString.rangeOfString("death") != nil || q.lowercaseString.rangeOfString("not like me") != nil {
		return ("I speak not in terms of love or death.", -1, true)
	} else if q.rangeOfString("?") == nil || q.isEmpty == true {
		return ("Ask me a question mortal!", -1, true)
	}
	repeat {
		answerID = Int(arc4random_uniform(UInt32(standardAnswers.count)))
	} while answerID == a
	//So this is a sh*tton of code, let's disect it:
		/* We create a variable called answerID.
		 * We count the items in standardAnswers.
		 * We generate a number between 0 and the items in standardAnswers
		 * We do that until the answer of standardAnswers isn't a, the last answer.
		 * We assign that number to an int of answerID.
		 */
	let responce:String = standardAnswers[answerID]
	//I'm returning an answer (string) the item in the array it is from (int) and wether the question had love or death in it (bool) If the bool was true, -1 will be returned to represent an "error".
	return(responce, answerID, false)
}

class ViewController: UIViewController {

	@IBOutlet weak var eightBallResponse: UILabel!
	@IBOutlet weak var eightBallQuestion: UITextField! = nil
	var lastAnswer:Int = -1
	
    override func viewDidLoad() {
        super.viewDidLoad()
		eightBallResponse.text = "Let me bestow upon thou, a gift of knowledge"
    }

        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
    @IBAction func submitEightBallQuestion() {
		let question: String
		if eightBallQuestion.text != nil{
			question = eightBallQuestion.text!
		} else {
			question = ""
		}
		let eightBallTuple = magicEightBallAnswers(question: question, lastAnser: lastAnswer)
		//eightBallResponse.text, lastAnswer, color
		eightBallResponse.text = eightBallTuple.0
		lastAnswer = eightBallTuple.1
		let changeColor = eightBallTuple.2
		if changeColor == true{
			self.view.backgroundColor = fail
		} else {
			self.view.backgroundColor = fine
		}
	}
	
	
	
    
}

