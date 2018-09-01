# UIKit Catalog (iOS): Creating and Customizing UIKit Controls

This sample demonstrates how to use many views and controls in the UIKit framework along with their assorted functionalities. Refer to this sample if you are looking for specific controls or views that are provided by the system.

Note that this sample also shows you how to make your non-standard views (images or custom views) accessible. Using the iOS Accessibility API enhances the user experience of VoiceOver users.

You will also notice this sample shows how to localize string content by using the `NSLocalizedString` function. Each language has a "Localizeable.strings" file and this function refers to this file when loading the strings from the default bundle.

## Build Requirements

Xcode 9.0 and iOS 11 SDK or later

## Runtime Requirements

iOS 11 or later

## Using the Sample

This sample uses a `UISplitViewController` based application architecture, which can be seen in the storyboard files. The primary view controller defines the list of views that are used for demonstration in this application. Each secondary view controller corresponds to a given system-provided control (and is named accordingly). For example, `UIAlertController` shows how to use `UIAlertController` and its associated functionality. The only two exceptions to this rule are `UISearchBar` / `UISearchController` and `UIToolbar`; these APIs have multiple view controllers to explain how the control works and can be customized.

To demonstrate how you can manage the complexity of your storyboards, all view controllers are hosted in a separate storyboard and loaded when needed.

## UIKit Controls That Are Covered

This sample demonstrates how to configure and customize the following controls / controllers:

+ `UIActivityIndicatorView`
+ `UIAlertController`
+ `UIButton`
+ `UIDatePicker`
+ `UIImageView`
+ `UIPageControl`
+ `UIPickerView`
+ `UIProgressView`
+ `UISegmentedControl`
+ `UISlider`
+ `UIStackView`
+ `UIStepper`
+ `UISwitch`
+ `UITextField`
+ `UITextView`
+ `WKWebView`
+ `UISearchBar`
+ `UISearchController`
+ `UIToolbar`

Copyright (C) 2008-2017 Apple Inc. All rights reserved.
