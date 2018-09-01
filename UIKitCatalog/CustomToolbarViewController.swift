/*
    Copyright (C) 2017 Apple Inc. All Rights Reserved.
    See LICENSE.txt for this sample’s licensing information
    
    Abstract:
    A view controller that demonstrates how to customize a UIToolbar.
*/

import UIKit

class CustomToolbarViewController: UIViewController {
    // MARK: - Properties

    @IBOutlet weak var toolbar: UIToolbar!

    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

		let toolbarBackgroundImage = UIImage(named: "toolbar_background")
		toolbar.setBackgroundImage(toolbarBackgroundImage, forToolbarPosition: .bottom, barMetrics: .default)
		
		let toolbarButtonItems = [
			customImageBarButtonItem,
			flexibleSpaceBarButtonItem,
			customBarButtonItem
		]
		toolbar.setItems(toolbarButtonItems, animated: true)
    }

    // MARK: - UIBarButtonItem Creation and Configuration

    var customImageBarButtonItem: UIBarButtonItem {
        let customBarButtonItemImage = #imageLiteral(resourceName: "tools_icon")

        let customImageBarButtonItem = UIBarButtonItem(image: customBarButtonItemImage,
                                                       style: .plain,
                                                       target: self,
                                                       action: #selector(CustomToolbarViewController.barButtonItemClicked(_:)))

        customImageBarButtonItem.tintColor = UIColor(named: "Tint_Purple_Color")

        return customImageBarButtonItem
    }

    var flexibleSpaceBarButtonItem: UIBarButtonItem {
        // Note that there's no target/action since this represents empty space.
        return UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
    }

    var customBarButtonItem: UIBarButtonItem {
        let barButtonItem = UIBarButtonItem(title: NSLocalizedString("Button", comment: ""),
                                            style: .plain,
                                            target: self,
                                            action: #selector(CustomToolbarViewController.barButtonItemClicked(_:)))

        let attributes = [
            NSAttributedStringKey.foregroundColor: UIColor(named: "Tint_Purple_Color")!
        ]
        barButtonItem.setTitleTextAttributes(attributes, for: .normal)

        return barButtonItem
    }

    // MARK: - Actions
    
    @objc
    func barButtonItemClicked(_ barButtonItem: UIBarButtonItem) {
        print("A bar button item on the custom toolbar was clicked: \(barButtonItem).")
    }
}
