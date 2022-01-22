//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Vivek Kumar Singh on 22/01/22.

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init (q: String, a: String){
        text = q
        answer = a
    }
}
