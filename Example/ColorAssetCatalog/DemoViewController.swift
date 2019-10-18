//
//  DemoViewController.swift
//  ColorAssetCatalog
//
//  Created by Sam Rayner on 06/12/2017.
//  Copyright (c) 2017 Sam Rayner. All rights reserved.
//

import UIKit
import ColorAssetCatalog

class DemoViewController: UIViewController {
    @IBOutlet private var mainLabel: UILabel!

    let colorNames = ["universal", "device-specific", "p3", "missing", "string-components", "8-bit", "8-bit Hex"]

    var currentColorName: String? {
        didSet {
            guard let currentColorName = currentColorName else { return }
            navigationItem.title = currentColorName
            view.backgroundColor = UIColor(asset: currentColorName)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        if let textColor = UIColor(asset: "text-color") {
            mainLabel.attributedText = NSAttributedString(string: "Demo", attributes: [.foregroundColor: textColor])
        }

        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(didTap(_:)))
        view.addGestureRecognizer(tapRecognizer)
        advanceColor()
    }

    @objc func didTap(_ sender: UITapGestureRecognizer) {
        advanceColor()
    }

    func nextColorName() -> String? {
        guard let currentColorName = currentColorName else { return colorNames.first }
        let currentIndex = colorNames.firstIndex(of: currentColorName) ?? 0
        let nextIndex = (currentIndex >= colorNames.count - 1) ? 0 : currentIndex + 1
        return colorNames[nextIndex]
    }

    func advanceColor() {
        currentColorName = nextColorName()
    }
}
