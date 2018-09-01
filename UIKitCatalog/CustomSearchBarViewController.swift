/*
    Copyright (C) 2017 Apple Inc. All Rights Reserved.
    See LICENSE.txt for this sample’s licensing information
    
    Abstract:
    A view controller that demonstrates how to customize a UISearchBar.
*/

import UIKit

class CustomSearchBarViewController: UIViewController {
    // MARK: - Properties

    @IBOutlet weak var searchBar: UISearchBar!

    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureSearchBar()
    }

    // MARK: - Configuration
    
    func configureSearchBar() {
        searchBar.showsCancelButton = true
        searchBar.showsBookmarkButton = true

        searchBar.tintColor = UIColor(named: "Tint_Purple_Color")

        searchBar.backgroundImage = UIImage(named: "search_bar_background")

        // Set the bookmark image for both normal and highlighted states.
        let bookmarkImage = #imageLiteral(resourceName: "bookmark_icon")
        searchBar.setImage(bookmarkImage, for: .bookmark, state: .normal)

        let bookmarkHighlightedImage = #imageLiteral(resourceName: "bookmark_icon_highlighted")
        searchBar.setImage(bookmarkHighlightedImage, for: .bookmark, state: .highlighted)
    }

}

// MARK: - UISearchBarDelegate

extension CustomSearchBarViewController: UISearchBarDelegate {
	func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
		print("The custom search bar keyboard \"Search\" button was tapped.")
		
		searchBar.resignFirstResponder()
	}
	
	func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
		print("The custom search bar \"Cancel\" button was tapped.")
		
		searchBar.resignFirstResponder()
	}
	
	func searchBarBookmarkButtonClicked(_ searchBar: UISearchBar) {
		print("The custom \"bookmark button\" inside the search bar was tapped.")
	}
	
}
