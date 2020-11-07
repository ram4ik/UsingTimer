//
//  ViewController.swift
//  UsingTimer
//
//  Created by Ramill Ibragimov on 07.11.2020.
//

import UIKit

class ViewController: UIViewController {
    
    let colors: [UIColor] = [
        .systemRed,
        .systemBlue,
        .systemPink,
        .systemTeal,
        .systemGray,
        .systemFill,
        .systemGreen,
        .systemOrange,
        .systemYellow,
        .systemPurple
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        createTimer()
    }

    func createTimer() {
        let timer = Timer.scheduledTimer(
            timeInterval: 2,
            target: self,
            selector: #selector(fireTimer),
            userInfo: nil,
            repeats: true
        )
        timer.tolerance = 200
    }
    
    @objc func fireTimer() {
        view.backgroundColor = colors.randomElement()
    }
}

