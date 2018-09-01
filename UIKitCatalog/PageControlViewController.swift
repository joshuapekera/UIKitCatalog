/*
    Copyright (C) 2017 Apple Inc. All Rights Reserved.
    See LICENSE.txt for this sample’s licensing information
    
    Abstract:
    A view controller that demonstrates how to use UIPageControl.
*/

import UIKit

class PageControlViewController: UIViewController {
    // MARK: - Properties

    @IBOutlet weak var pageControl: UIPageControl!

    @IBOutlet weak var colorView: UIView!

    /// Colors that correspond to the selected page. Used as the background color for `colorView`.
    let colors = [
        UIColor.black,
        UIColor.gray,
        UIColor.red,
        UIColor.green,
        UIColor.blue,
        UIColor.cyan,
        UIColor.yellow,
        UIColor.magenta,
        UIColor.orange,
        UIColor.purple
    ]

    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        configurePageControl()
        pageControlValueDidChange()
    }

    // MARK: - Configuration

    func configurePageControl() {
        // The total number of pages that are available is based on how many available colors we have.
        pageControl.numberOfPages = colors.count
        pageControl.currentPage = 2

        pageControl.tintColor = UIColor(named: "Tint_Blue_Color")
		pageControl.pageIndicatorTintColor = UIColor(named: "Tint_Green_Color")
        pageControl.currentPageIndicatorTintColor = UIColor(named: "Tint_Purple_Color")

        pageControl.addTarget(self, action: #selector(PageControlViewController.pageControlValueDidChange), for: .valueChanged)
    }

    // MARK: - Actions

    @objc
    func pageControlValueDidChange() {
		// Note: gesture swiping between pages is provided by `UIPageViewController` and not `UIPageControl`.
		print("The page control changed its current page to \(pageControl.currentPage).")

        colorView.backgroundColor = colors[pageControl.currentPage]
    }
}
