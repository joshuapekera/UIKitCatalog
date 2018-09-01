/*
    Copyright (C) 2017 Apple Inc. All Rights Reserved.
    See LICENSE.txt for this sample’s licensing information
    
    Abstract:
    A view controller that demonstrates how to use UISlider.
*/

import UIKit

class SliderViewController: UITableViewController {
    // MARK: - Properties

    @IBOutlet weak var defaultSlider: UISlider!

    @IBOutlet weak var tintedSlider: UISlider!
    
    @IBOutlet weak var customSlider: UISlider!

    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        configureDefaultSlider()
        configureTintedSlider()
        configureCustomSlider()
    }

    // MARK: - Configuration

    func configureDefaultSlider() {
        defaultSlider.minimumValue = 0
        defaultSlider.maximumValue = 100
        defaultSlider.value = 42
        defaultSlider.isContinuous = true

        defaultSlider.addTarget(self, action: #selector(SliderViewController.sliderValueDidChange(_:)), for: .valueChanged)
    }

    func configureTintedSlider() {
        tintedSlider.minimumTrackTintColor = UIColor(named: "Tint_Blue_Color")
        tintedSlider.maximumTrackTintColor = UIColor(named: "Tint_Purple_Color")

        tintedSlider.addTarget(self, action: #selector(SliderViewController.sliderValueDidChange(_:)), for: .valueChanged)
    }

    func configureCustomSlider() {
        let leftTrackImage = UIImage(named: "slider_blue_track")
        customSlider.setMinimumTrackImage(leftTrackImage, for: .normal)

        let rightTrackImage = UIImage(named: "slider_green_track")
        customSlider.setMaximumTrackImage(rightTrackImage, for: .normal)

        let thumbImage = UIImage(named: "slider_thumb")
        customSlider.setThumbImage(thumbImage, for: .normal)

        customSlider.minimumValue = 0
        customSlider.maximumValue = 100
        customSlider.isContinuous = false
        customSlider.value = 84

        customSlider.addTarget(self, action: #selector(SliderViewController.sliderValueDidChange(_:)), for: .valueChanged)
    }

    // MARK: - Actions

    @objc
    func sliderValueDidChange(_ slider: UISlider) {
        print("A slider changed its value: \(slider).")
    }
}
