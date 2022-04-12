//
//  ViewController.swift
//  HomeWork-25
//
//  Created by Ваня Науменко on 10.04.22.
//

import Spring
import UIKit

// MARK: - ViewController

class ViewController: UIViewController {
    @IBOutlet var totaiLabel: UILabel!
    @IBOutlet var viewAnimated: SpringView!
    @IBOutlet var forceNumber: UILabel!
    @IBOutlet var durationNumber: UILabel!
    @IBOutlet var delayNumber: UILabel!
    @IBOutlet var curveNumber: UILabel!
    @IBOutlet var stackViewDeteil: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()
        stackViewDeteil.isHidden = true
        viewAnimated.layer.cornerRadius = viewAnimated.frame.width / 2
    }

    @IBAction func buttonActiv() {
        stackViewDeteil.isHidden = false
        if let randomElement = AnimationType.allCases.randomElement()?.rawValue,
           let randomCurve = Curve.allCases.randomElement()?.rawValue
        {
            viewAnimated.backgroundColor = randomColor()
            totaiLabel.text = randomElement
            viewAnimated.animation = randomElement
            viewAnimated.curve = randomCurve
            curveNumber.text = randomCurve
        }
        viewAnimated.force = randomData()
        forceNumber.text = dataTextLable(viewAnimated.force)
        viewAnimated.duration = randomData()
        durationNumber.text = dataTextLable(viewAnimated.duration)
        viewAnimated.delay = randomData()
        delayNumber.text = dataTextLable(viewAnimated.delay)
        
        viewAnimated.animate()
    }
}

extension ViewController {
    private func randomColor() -> UIColor {
        return UIColor(red: .random(in: 0 ... 1),
                       green: .random(in: 0 ... 1),
                       blue: .random(in: 0 ... 1),
                       alpha: 1)
    }
    
    private func randomData() -> CGFloat {
        return .random(in: 0.1...2)
    }
    
    private func dataTextLable(_ number: CGFloat) -> String {
        return String(format: "%.2f", number)
    }
}
