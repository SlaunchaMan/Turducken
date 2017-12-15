//
//  PreviewViewController.swift
//  MyMacQuickLookPreview
//
//  Created by Jeff Kelley on 12/15/17.
//  Copyright © 2017 Jeff Kelley. All rights reserved.
//

import Cocoa
import Quartz

class PreviewViewController: NSViewController, QLPreviewingController {
    
    override var nibName: NSNib.Name? {
        return NSNib.Name("PreviewViewController")
    }

    override func loadView() {
        super.loadView()
        // Do any additional setup after loading the view from its nib.
    }

    func preparePreviewOfSearchableItem(withIdentifier identifier: String, queryString: String, completionHandler handler: @escaping QLPreviewItemLoadingBlock) {
        // Perform any setup necessary in order to prepare the view.
        
        // Call the completion handler so Quick Look knows that the preview is fully loaded.
        // Quick Look will display a loading spinner while the completion handler is not called.
        handler(nil)
    }

}
