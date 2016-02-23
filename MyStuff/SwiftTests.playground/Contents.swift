//: Playground - noun: a place where people can play

import UIKit

let standardAnswers: [String] = ["Yes",
    "No",
    "It is a possibility.",
    "My view has been shaded, ask again."]

let answerID: Int = Int(arc4random_uniform(UInt32(standardAnswers.count)))
