/*
    Copyright (C) 2017 Apple Inc. All Rights Reserved.
    See LICENSE.txt for this sample’s licensing information
    
    Abstract:
    A view controller that demonstrates how to use UISwitch.
*/

import UIKit

class SwitchViewController: UITableViewController {
    // MARK: - Properties

    @IBOutlet weak var defaultSwitch: UISwitch!
    
    @IBOutlet weak var tintedSwitch: UISwitch!

    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureDefaultSwitch()
        configureTintedSwitch()
    }

    // MARK: - Configuration

    func configureDefaultSwitch() {
        defaultSwitch.setOn(true, animated: false)

        defaultSwitch.addTarget(self, action: #selector(SwitchViewController.switchValueDidChange(_:)), for: .valueChanged)
    }

    func configureTintedSwitch() {
        tintedSwitch.tintColor = UIColor(named: "Tint_Blue_Color")
        tintedSwitch.onTintColor = UIColor(named: "Tint_Green_Color")
        tintedSwitch.thumbTintColor = UIColor(named: "Tint_Purple_Color")

        tintedSwitch.addTarget(self, action: #selector(SwitchViewController.switchValueDidChange(_:)), for: .valueChanged)
    }

    // MARK: - Actions

    @objc
    func switchValueDidChange(_ aSwitch: UISwitch) {
        print("A switch changed its value: \(aSwitch).")
    }
}
