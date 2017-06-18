//
//  PreviewViewController.swift
//  MyQuickLookPreview
//
//  Created by Jeff Kelley on 6/17/17.
//  Copyright © 2017 Jeff Kelley. All rights reserved.
//

import UIKit
import QuickLook

class PreviewViewController: UIViewController, QLPreviewingController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func preparePreviewOfSearchableItem(identifier: String, queryString: String?, completionHandler handler: @escaping QLPreviewItemLoadingBlock) {
        // Perform any setup necessary in order to prepare the view.
        
        // Call the completion handler so Quick Look knows that the preview is fully loaded.
        // Quick Look will display a loading spinner while the completion handler is not called.
        handler(nil)
    }
    
    /*
     * Implement this method if you support previewing files.
     * Add the supported content types to the QLSupportedContentTypes array in the Info.plist of the extension.
     *
    func preparePreviewOfFile(at URL: URL, completionHandler handler: @escaping QLPreviewItemLoadingBlock) {
        
        handler(nil)
    }
     */
    
}
