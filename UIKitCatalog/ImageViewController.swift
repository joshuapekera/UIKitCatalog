/*
    Copyright (C) 2017 Apple Inc. All Rights Reserved.
    See LICENSE.txt for this sample’s licensing information
    
    Abstract:
    A view controller that demonstrates how to use UIImageView.
*/

import UIKit

class ImageViewController: UIViewController {
    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureImageView()
    }
    
    // MARK: - Configuration
    
    func configureImageView() {
        // The root view of the view controller set in Interface Builder is a UIImageView.
        if let imageView = view as? UIImageView {
            // Fetch the images (each image is of the format Flowers_number).
            imageView.animationImages = (1...5).map { UIImage(named: "Flowers_\($0)")! }

            // We want the image to be scaled to the correct aspect ratio within imageView's bounds.
            imageView.contentMode = .scaleAspectFit
            
            /** If the image does not have the same aspect ratio as imageView's bounds,
                then imageView's backgroundColor will be applied to the "empty" space.
            */
            imageView.backgroundColor = UIColor.white
            
            imageView.animationDuration = 5
            imageView.startAnimating()
            
            imageView.isAccessibilityElement = true
            imageView.accessibilityLabel = NSLocalizedString("Animated", comment: "")
        }
    }
}
