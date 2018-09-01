/*
    Copyright (C) 2017 Apple Inc. All Rights Reserved.
    See LICENSE.txt for this sample’s licensing information
    
    Abstract:
    The application-specific delegate class.
*/

import UIKit

@UIApplicationMain
class AppDelegate: NSObject, UIApplicationDelegate, UISplitViewControllerDelegate {
    // MARK: - Properties

    var window: UIWindow?
	
	/** The detailViewManager is responsible for maintaining the UISplitViewController delegation
		and for managing the detail view controller of the split view.
	*/
	var detailViewManager = DetailViewManager()
	
    // MARK: - UIApplicationDelegate

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		if let splitViewController = window!.rootViewController as? UISplitViewController {
            splitViewController.preferredDisplayMode = .allVisible
			splitViewController.delegate = detailViewManager
			detailViewManager.splitViewController = splitViewController
        }
        return true
    }

}
