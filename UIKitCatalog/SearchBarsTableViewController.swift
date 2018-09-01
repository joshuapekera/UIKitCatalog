/*
Copyright (C) 2017 Apple Inc. All Rights Reserved.
See LICENSE.txt for this sample’s licensing information

Abstract:
Table view controller for presenting various search bars.
*/

import UIKit

class SearchBarsTableViewController: BaseTableViewController {
	// MARK: - UITableViewDelegate
	
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		var storyboardSceneID = String()
		switch indexPath.section {
		case 0:
			switch indexPath.row {
			case 0:
			// Default
			storyboardSceneID = "DefaultSearchBarViewController"
			case 1:
			// Custom
			storyboardSceneID = "CustomSearchBarViewController"
			default: break
			}
		case 1:
			// Search Controller
			storyboardSceneID = "SearchBarEmbedInNavBarViewController"
			default: break
		}

		let exampleViewController = storyboard?.instantiateViewController(withIdentifier: storyboardSceneID)
		pushOrPresentViewController(viewController: exampleViewController!, cellIndexPath: indexPath)
	}
}

