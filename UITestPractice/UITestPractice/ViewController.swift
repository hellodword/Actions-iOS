//
//  ViewController.swift
//  UITestPractice
//
//  Created by ky0me22 on 2021/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondArea: UIView!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var fourthButton: UIButton!
    @IBOutlet weak var fifthButton: UIButton!
    @IBOutlet weak var lastArea: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        secondArea.accessibilityIdentifier = "SecondArea"
        lastArea.accessibilityIdentifier = "LastArea"
        setup()
    }

    private func setup() {
        secondArea.isHidden = true
        thirdButton.isHidden = true
        fourthButton.isHidden = true
        fifthButton.isHidden = true
        lastArea.isHidden = true
    }

    @IBAction func pushFirst(_ sender: Any) {
        secondArea.isHidden = false
    }

    @IBAction func pushSecond(_ sender: Any) {
        thirdButton.isHidden = false
    }

    @IBAction func pushThird(_ sender: Any) {
        fourthButton.isHidden = false
    }

    @IBAction func pushFourth(_ sender: Any) {
        fifthButton.isHidden = false
    }

    @IBAction func pushFifth(_ sender: Any) {
        lastArea.isHidden = false
    }

    @IBAction func pushReset(_ sender: Any) {
        setup()
    }
}

