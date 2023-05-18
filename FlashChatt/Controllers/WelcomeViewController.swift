//
//  WelcomeViewController.swift
//  FlashChatt
//
//  Created by Giorgi Goginashvili on 5/18/23.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        animatedTitle()
    }
    
    private func animatedTitle() {
        titleLabel.text = ""
        var charIndex: Double = 0
        let titleText = "⚡️FlashChat"
        for letter in titleText {
            print("-")
            print(0.1 * charIndex)
            print(letter)
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { timer in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
    }

}
