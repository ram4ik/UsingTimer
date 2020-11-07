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
        var ran = 1
        _ = Timer.scheduledTimer(
            withTimeInterval: 1,
            repeats: true) { [weak self] timer in
            if ran >= 10 {
                timer.invalidate()
            }
            DispatchQueue.main.async {
                self?.view.backgroundColor = self?.colors.randomElement() ?? .clear
                ran += 1
            }
        }
    }
}
