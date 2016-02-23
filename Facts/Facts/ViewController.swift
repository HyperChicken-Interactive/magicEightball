//
//  ViewController.swift
//  8ball
//
//  Created by Whitman Huntley on 2/22/16.
//  Copyright © 2016 HyperChicken Interactive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var eightBallResponse: UILabel!
	@IBOutlet weak var eightBallQuestion: UITextField!
	
    override func viewDidLoad() {
        super.viewDidLoad()
    }

        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	@IBAction func eightBallProcess() {
		print(eightBallQuestion.text)
	}
	
    
}

