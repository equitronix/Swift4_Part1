//
//  ViewController.swift
//  Swift4_part1
//
//  Created by Admin on 14/10/18.
//  Copyright © 2018 Equitronix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allStudents: [(String, String)] = [("first name","first address"),
                                           ("second name","second address"),
                                           ("third name","third address"),
                                           ("fourth name","fourth address")];
    var currentStudentIndex : Int = 0;

    @IBOutlet var studentNameLabel: UILabel!
    @IBOutlet var studentAddressLabel: UILabel!
    @IBAction func showNextStudent(_ sender: UIButton){
        currentStudentIndex += 1;
        if currentStudentIndex == allStudents.count{
            currentStudentIndex = 0;
        }
        showName();
    }
    @IBAction func showStudentAddress(_ sender: UIButton){
        showAddress();
    }

    

    override func viewDidLoad() {
        super.viewDidLoad()
        showName();
    }

    private func showName(){
        studentNameLabel.text = allStudents[currentStudentIndex].0;
        studentAddressLabel.text = "-";
    }
    
    private func showAddress(){
        studentAddressLabel.text = allStudents[currentStudentIndex].1
    }
    

}


